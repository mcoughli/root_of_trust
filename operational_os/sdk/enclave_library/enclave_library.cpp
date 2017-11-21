#include "CommunicationToProgram.h"
#include "enclave_library.h"
#include "system_config.h"
#include "user_mmap_driver.h"
#include <stdio.h>
#include <stdlib.h>
#include "arm_protocol_header.h"
#include <fstream>
#include <thrift/protocol/TBinaryProtocol.h>
#include <thrift/server/TSimpleServer.h>
#include <thrift/transport/TServerSocket.h>
#include <thrift/transport/TBufferTransports.h>

using namespace ::apache::thrift;
using namespace ::apache::thrift::protocol;
using namespace ::apache::thrift::transport;
using namespace ::apache::thrift::server;

using boost::shared_ptr;

using namespace  ::communication_to_program;

class CommunicationToProgramHandler : virtual public CommunicationToProgramIf {
 public:
  CommunicationToProgramHandler() {
    // Your initialization goes here
  }

  void begin_attestation(std::string& _return, const std::string& remote_message) {
    int i;
    // Your implementation goes here
    printf("begin_attestation\n");
    //TODO: get message buffer size from arm header
    unsigned char message_out[256];
    start_attestation((unsigned char*)(remote_message.data()), message_out);
    _return.assign((char*)(message_out), 256);
  }

  bool check_message_ready() {
    // Your implementation goes here
    printf("check_message_ready\n");
  }

  void get_message(std::string& _return) {
    // Your implementation goes here
    //TODO: get message buffer size from arm header
    unsigned char message_buffer[256];
    unsigned int message_length;
    generate_encrypted_message(message_buffer, &message_length);
    _return.assign((char*)message_buffer, message_length);
    printf("get_message\n");
  }

  void signal_message_received() {
    // Your implementation goes here
    printf("signal_message_received\n");
  }

  bool transfer_message(const std::string& remote_message) {
    // Your implementation goes here
    printf("transfer_message\n");
  }

};

// int main(int argc, char **argv) {
void * attestation_server_serve(void * args){
  int port = 9090;
  shared_ptr<CommunicationToProgramHandler> handler(new CommunicationToProgramHandler());
  shared_ptr<TProcessor> processor(new CommunicationToProgramProcessor(handler));
  shared_ptr<TServerTransport> serverTransport(new TServerSocket(port));
  shared_ptr<TTransportFactory> transportFactory(new TBufferedTransportFactory());
  shared_ptr<TProtocolFactory> protocolFactory(new TBinaryProtocolFactory());

  TSimpleServer server(processor, serverTransport, transportFactory, protocolFactory);
  server.serve();
  return 0;
}

void initialize_remote_attestion_server(){
  int attestation_create = pthread_create(&remote_attestation_thread, NULL, attestation_server_serve, NULL);
  if(attestation_create){
    fprintf(stderr, "Error launching remote attestation server\n");
    exit(-1);
  }
}

void * watch_ocall_buffer(void * args){
  pthread_exit(NULL);
}

void initialize_ocall_listener(){
  // TODO: watch_ocall_buffer() should be autogenerated similar to the
  // microblaze code
  int listener_create = pthread_create(&ocall_listener_thread, NULL, watch_ocall_buffer, NULL);
  if(listener_create){
    fprintf(stderr, "Error launching ocall listener thread\n");
    exit(-1);
  }
}

int enclave_init(){
  return enclave_init_with_file(DEFAULT_MICROBLAZE_BINARY);
}

int enclave_init_with_file(char const *filename){
  // 1. Program memory
  shared_memory program_buffer = getSharedMemoryArea(PROGRAM_BUFFER_ADDRESS, PROGRAM_BUFFER_SIZE);
  // FILE *program_file = fopen(filename, "r");
  char current_char;
  int buffer_index = 0;
  //TODO: handle 4 byte vs. 1 byte writes
  std::ifstream is(filename);
  while(is.get(current_char)){
    ((unsigned char*)program_buffer->ptr)[buffer_index] = (unsigned char)current_char;
    buffer_index++;
  }
  // fclose(program_file);
  is.close();
  cleanupSharedMemoryPointer(program_buffer);
  // 2. Reset microblaze
  shared_memory reset_controller = getSharedMemoryArea(RESET_CONTROLLER_ADDRESS, 0x1000);
  ((unsigned char*)reset_controller->ptr)[0] = 1;
  cleanupSharedMemoryPointer(reset_controller);
  // 3. Launch attestation thread that listens for thrift connections and
  // talks thift back
  initialize_remote_attestion_server();
  // 4. Launch ocall listening thread
  // TODO: requires the watch_ocall_buffer() to be autogenerated
  // initialize_ocall_listener();
}
