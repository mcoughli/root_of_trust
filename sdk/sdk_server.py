#!/usr/bin/python3

# Accept requests for attestations
# Accept uploaded binaries to run
#

import os
import shlex
import subprocess
import stat
import asyncio
import json
import threading
import binascii
import base64
import pexpect
import time
import sys
import requests
import base64
from devmem import DevMem
from threading import Thread
from program_memory import write_bin_file, trigger_reset
# from microblaze_utils import write_shared_buffer
# from ecdsa_utils import generate_ecdsa_attestation
from flask import Flask, request
# from flask.ext.api import status
# import gen_py.communication_to_program.CommunicationToProgram as comm
# from thrift import Thrift
# from thrift.transport import TSocket
# from thrift.transport import TTransport
# from thrift.protocol import TBinaryProtocol


##########################################
# Config and Globals
##########################################

SCRIPT_PATH = os.path.dirname(os.path.realpath(sys.argv[0]))

#TODO: very much need config file for this
RESET_BASE_ADDRESS = None#0xB0010000
ECDSA_BUFFER = None#0xA0020000
MAX_LAUNCH_TRIES = 5
DEV_ECDSA_BINARY = "{}/ecdsa_runner.bin".format(SCRIPT_PATH)
DEV_SYSTEM_CONFIG = "{}/default_system_config.json".format(SCRIPT_PATH)

TICKET_LOCK = threading.Lock()
ATTESTATION_TICKET = 0

#TODO: support multiple enclaves
CURRENT_ENCLAVE = None
CURRENT_RUNNING = False

SECURE_STORAGE_DEV = 0xA0050000
SECURE_STORAGE_LENGTH = 0x1000
SECURE_STORAGE_PRIVATE_OFFSET = 0
SECURE_STORAGE_PUBLIC_OFFSET = 0x40

SERVER_PUBLIC_KEY = None
SERVER_PRIVATE_KEY = None
PUBLIC_KEY_FILE_DEV = "server_public_key_dev.bin"
PRIVATE_KEY_FILE_DEV = "server_private_key_dev.bin"#"server_private_key_hash_dev.bin"

def parse_system_config(config_file):
    with open(config_file) as handle:
        config = json.loads(handle.read())
    global RESET_BASE_ADDRESS
    global ECDSA_BUFFER
    try:
        arm_config = config["arm"]
        RESET_BASE_ADDRESS = arm_config["reset_controller_address"]
        ECDSA_BUFFER = arm_config["ecdsa_memory_address"]
    except KeyError as ke:
        print("Error reading config file: {}".format(ke))
        sys.exit(-1)

# Run event loop in separate thread
def start_loop(loop):
    asyncio.set_event_loop(loop)
    print("starting event loop")
    loop.run_forever()

def initialize_ecdsa_key_dev(public_key_file, private_key_file):
    global SERVER_PUBLIC_KEY
    global SERVER_PRIVATE_KEY
    with open(public_key_file, "rb") as key_file_handle:
        public_key = key_file_handle.read(32)
    with open(private_key_file, "rb") as key_file_handle:
        private_key = key_file_handle.read(32)
    SERVER_PUBLIC_KEY = bytearray(public_key)
    SERVER_PRIVATE_KEY = bytearray(private_key)
    #TODO: have this stuff run only in non-simulation mode
    secure_storage = DevMem(SECURE_STORAGE_DEV, length=SECURE_STORAGE_LENGTH)
#    secure_storage.write(SECURE_STORAGE_PUBLIC_OFFSET, public_key)
    secure_storage.write(SECURE_STORAGE_PRIVATE_OFFSET, private_key)

def initialize_ecdsa_core_dev():
    print("Ecdsa buffer address: {}".format(ECDSA_BUFFER))
    write_bin_file(DEV_ECDSA_BINARY, int(ECDSA_BUFFER, 16))
    trigger_reset(int(RESET_BASE_ADDRESS, 16))

##########################################
# Initialize app and loop
##########################################

app = Flask(__name__)
parse_system_config(DEV_SYSTEM_CONFIG)
# initialize_ecdsa_core_dev()
initialize_ecdsa_key_dev(PUBLIC_KEY_FILE_DEV, PRIVATE_KEY_FILE_DEV)
# Event loops for async
#program_loop = asyncio.new_event_loop()
#attestation_loop = asyncio.new_event_loop()
# Event loops in separate thread
#program_thread = Thread(target=start_loop, args=(program_loop,))
#program_thread.start()
#attestation_thread = Thread(target=start_loop, args=(attestation_loop,))
#attestation_thread.start()

# initialize workers
#enclave_queue = asyncio.Queue(loop=event_loop)
#attestation_data_queue = asyncio.Queue(loop=event_loop)
attestation_outputs = {}
tickets_issued = []

untrusted_program = "enclave_untrusted_program.elf"


###########################################
# Coroutines
###########################################



def get_increment_ticket():
    with TICKET_LOCK:
        global ATTESTATION_TICKET
        current_ticket = ATTESTATION_TICKET
        ATTESTATION_TICKET += 1
        return current_ticket


def program_enclave():
    # Program the enclave memory using the binary in the Queue
    # TODO: switch to streaming data through the ECDSA programming
    # hardware
    # Have an HLS peripheral to do this:
    # 1. program DMA to copy data into microblaze memory somehow
    # 2. Store a hash of the original microblaze memory in an FPGA-side
    #    buffer
    #######################
    global CURRENT_ENCLAVE
    global CURRENT_RUNNING
    # 1. Program bin file to microblaze memory
    print("got item off enclave queue")
    if CURRENT_ENCLAVE is not None:
        CURRENT_ENCLAVE.close()
    # TODO: write files securely with secure file names and directories
    st = os.stat(untrusted_program)
    os.chmod(
        untrusted_program,
        st.st_mode | stat.S_IXUSR | stat.S_IXGRP | stat.S_IXOTH
    )
    tries = 0
    while tries <  MAX_LAUNCH_TRIES:
        try:
            CURRENT_ENCLAVE = pexpect.spawn(
                shlex.split(
                    "{}/{}".format(os.getcwd(), untrusted_program)
                )
            )
            CURRENT_ENCLAVE.expect("Program hash and load finished", timeout=5)
            print("Program launched!")
            CURRENT_RUNNING = True
            CURRENT_ENCLAVE.interact()
            break
        except pexpect.TIMEOUT:
            time.sleep(5)
            tries += 1
            continue
    if tries >= MAX_LAUNCH_TRIES:
        print("Error launching enclave")


def perform_attestation(attestation_data, ticket, port=8080):
    # Receive attestation data and wait for result
    # TODO: interface with FPGA-side IP to handle triggering attestation
    # For now, assume signing a message buffer
    # 1. When request received, copy message into CPU message buffer
    #    and signal the microblaze CPU (using control addresses of this
    #    buffer that the microblaze will be watching)
    # 2. IP will copy original program hash and any message from the
    #    microblaze into ECDSA's buffer (ARM CPU can also access this).
    #    IP will read control signals from microblaze and wait for a
    #    message to be generated if the microblaze signals one to be
    #    coming
    # 3. ECDSA will sign the buffer, and IP will return result to CPU
    # 4. transmit the data in the buffer and the signature to requester
#    work_item = await queue.get()
#    message_data_raw = work_item["attestation_data"]
#    ticket = work_item["ticket"]
    # socket = TSocket.TSocket("localhost", 9090)
    # transport = TTransport.TBufferedTransport(socket)
    # protocol = TBinaryProtocol.TBinaryProtocol(transport)
    # client = comm.Client(protocol)
    # transport.open()
    # message_data = attestation_data
    url = "http://localhost:{}/v1/start_attestation".format(port)
    # attestation_data_str = str(base64.b64encode(attestation_data), 'ascii')
    # print(type(attestation_data_str))
    print("Beggining attestation")
    print("Recieved attestation data: {}".format(
        binascii.hexlify(attestation_data))
    )
    # message = client.begin_attestation(message_data)
    response = requests.post(
        url,
        json={
            "attestation_data": str(base64.b64encode(attestation_data), 'ascii')
        }
    )
    if response.status_code == 200:
        message = base64.b64decode(response.json()["attestation_data"])
        print("REST attestation call finished")
        print("Attestation message: {}".format(
            str(binascii.hexlify(message))
        ))
        attestation_outputs[ticket] = {
            "message": message
        }
    else:
        print("Error in attestation")
        print("Error code: {}".format(response.status_code))
        print("Error message: {}".format(response.text))
    # transport.close()
#    queue.task_done()


#################################################
# route handlers
#################################################


@app.route("/upload", methods=['GET', 'POST'])
def upload():
    if request.method == 'POST':
        binary_file = request.files['binary']
        program_file = request.files['program']
        if binary_file.filename == '' or program_file.name == '':
            return (
                json.dumps({"status": "No file"}),
                400
            )
        #TODO: check length of file against memory size of the enclave cpu
        if binary_file and program_file:
            #enclave_queue.put((program_file, binary_file))
            binary_file_name = request.form["binary_file_name"]
            binary_file.save(binary_file_name)
            program_file.save(untrusted_program)
            program_loop.call_soon_threadsafe(program_enclave)
            print("Put program and bianry file")
            #TODO: create async task for this?
            return (
                json.dumps({"status": "ok"}),
                202
            )
    return '''
    <!doctype html>
    <title>Upload Enclave Program</title>
    <h1>Upload enclave binary (.bin) and program</h1>
    <form method=post enctype=multipart/form-data>
      <p><input type=file name=binary></p>
      <p><input type=file name=program></p>
      <p><input type=text name=binary_name></p>
         <input type=submit value=Upload>
    </form>
    '''

@app.route("/public_key")
def public_key():
    return json.dumps({
            "public_key": str(binascii.hexlify(
                SERVER_PUBLIC_KEY
            ), 'ascii')
        }
    )

#TODO: support multiple enclaves in future
@app.route("/attestation/request", methods=["POST"])
def attestation_request():
    # Get attestation data
    if request.method == 'POST':
        attestation_data = binascii.unhexlify(request.form['attestation_data'])
        # Program to memory
        ticket = get_increment_ticket()
        tickets_issued.append(ticket)
#        attestation_data_queue.put(
#            {"ticket": ticket, "attestation_data": attestation_data}
#        )
        # attestation_loop.call_soon_threadsafe(perform_attestation, attestation_data, ticket)
        perform_attestation(attestation_data, ticket)
        return json.dumps({"ticket": ticket}), 201

@app.route("/attestation/result/<ticket>")
def attestation_result(ticket):
    print("ticket: {}".format(ticket))
    print(tickets_issued)
    ticket_in = int(ticket)
    if ticket_in in tickets_issued:
        if ticket_in in attestation_outputs:
            attestation = attestation_outputs[ticket_in]
            # TODO: message, attestation is binary, so there may be an encoding
            # issue
            attestation_data = binascii.hexlify(attestation["message"])
            print("Attestation data hex: {}".format(attestation_data))
            print("Attestation data length: {}".format(len(attestation_data)))
            print("Attestation data type: {}".format(type(attestation_data)))
            attestation_str = str(attestation_data, 'ascii')
            print("Attestation str: {}".format(str(attestation_str)))
            return json.dumps(
                {
                    "status": "complete",
                    "attestation": attestation_str
                }
            ), 200
        else:
            return json.dumps({"status": "pending"}), 204
    else:
        return json.dumps({"status": "not_found"}), 404
