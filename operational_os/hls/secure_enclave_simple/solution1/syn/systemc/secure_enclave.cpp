// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "secure_enclave.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic secure_enclave::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic secure_enclave::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> secure_enclave::ap_ST_fsm_state1 = "1";
const sc_lv<2> secure_enclave::ap_ST_fsm_state2 = "10";
const sc_lv<32> secure_enclave::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> secure_enclave::ap_const_lv1_1 = "1";
const sc_lv<128> secure_enclave::ap_const_lv128_lc_1 = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<32> secure_enclave::ap_const_lv32_1 = "1";
const int secure_enclave::C_S_AXI_DATA_WIDTH = "100000";
const sc_lv<1> secure_enclave::ap_const_lv1_0 = "0";
const sc_lv<64> secure_enclave::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<32> secure_enclave::ap_const_lv32_5 = "101";
const bool secure_enclave::ap_const_boolean_1 = true;

secure_enclave::secure_enclave(sc_module_name name) : sc_module(name), mVcdFile(0) {
    secure_enclave_AXILiteS_s_axi_U = new secure_enclave_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>("secure_enclave_AXILiteS_s_axi_U");
    secure_enclave_AXILiteS_s_axi_U->AWVALID(s_axi_AXILiteS_AWVALID);
    secure_enclave_AXILiteS_s_axi_U->AWREADY(s_axi_AXILiteS_AWREADY);
    secure_enclave_AXILiteS_s_axi_U->AWADDR(s_axi_AXILiteS_AWADDR);
    secure_enclave_AXILiteS_s_axi_U->WVALID(s_axi_AXILiteS_WVALID);
    secure_enclave_AXILiteS_s_axi_U->WREADY(s_axi_AXILiteS_WREADY);
    secure_enclave_AXILiteS_s_axi_U->WDATA(s_axi_AXILiteS_WDATA);
    secure_enclave_AXILiteS_s_axi_U->WSTRB(s_axi_AXILiteS_WSTRB);
    secure_enclave_AXILiteS_s_axi_U->ARVALID(s_axi_AXILiteS_ARVALID);
    secure_enclave_AXILiteS_s_axi_U->ARREADY(s_axi_AXILiteS_ARREADY);
    secure_enclave_AXILiteS_s_axi_U->ARADDR(s_axi_AXILiteS_ARADDR);
    secure_enclave_AXILiteS_s_axi_U->RVALID(s_axi_AXILiteS_RVALID);
    secure_enclave_AXILiteS_s_axi_U->RREADY(s_axi_AXILiteS_RREADY);
    secure_enclave_AXILiteS_s_axi_U->RDATA(s_axi_AXILiteS_RDATA);
    secure_enclave_AXILiteS_s_axi_U->RRESP(s_axi_AXILiteS_RRESP);
    secure_enclave_AXILiteS_s_axi_U->BVALID(s_axi_AXILiteS_BVALID);
    secure_enclave_AXILiteS_s_axi_U->BREADY(s_axi_AXILiteS_BREADY);
    secure_enclave_AXILiteS_s_axi_U->BRESP(s_axi_AXILiteS_BRESP);
    secure_enclave_AXILiteS_s_axi_U->ACLK(ap_clk);
    secure_enclave_AXILiteS_s_axi_U->ARESET(ap_rst_n_inv);
    secure_enclave_AXILiteS_s_axi_U->ACLK_EN(ap_var_for_const0);
    secure_enclave_AXILiteS_s_axi_U->ap_start(ap_start);
    secure_enclave_AXILiteS_s_axi_U->interrupt(interrupt);
    secure_enclave_AXILiteS_s_axi_U->ap_ready(ap_ready);
    secure_enclave_AXILiteS_s_axi_U->ap_done(ap_done);
    secure_enclave_AXILiteS_s_axi_U->ap_idle(ap_idle);
    secure_enclave_AXILiteS_s_axi_U->ap_return(ap_return);
    secure_enclave_AXILiteS_s_axi_U->secure_storage_in_V_address0(secure_storage_in_V_address0);
    secure_enclave_AXILiteS_s_axi_U->secure_storage_in_V_ce0(secure_storage_in_V_ce0);
    secure_enclave_AXILiteS_s_axi_U->secure_storage_in_V_q0(secure_storage_in_V_q0);
    secure_enclave_AXILiteS_s_axi_U->pin_attempt_V(pin_attempt_V);
    secure_enclave_AXILiteS_s_axi_U->pin_attempt_V_ap_vld(pin_attempt_V_ap_vld);
    secure_enclave_AXILiteS_s_axi_U->counter_in(counter_in);
    secure_enclave_AXILiteS_s_axi_U->counter_in_ap_vld(counter_in_ap_vld);
    secure_enclave_AXILiteS_s_axi_U->increment_counter(increment_counter);
    secure_enclave_AXILiteS_s_axi_U->increment_counter_ap_vld(increment_counter_ap_vld);
    secure_enclave_AXILiteS_s_axi_U->reset_counter(reset_counter);
    secure_enclave_AXILiteS_s_axi_U->reset_counter_ap_vld(reset_counter_ap_vld);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_condition_118);
    sensitive << ( pin_attempt_V_ap_vld_in_sig );
    sensitive << ( counter_in_ap_vld_in_sig );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( pin_attempt_V_ap_vld_in_sig );
    sensitive << ( counter_in_ap_vld_in_sig );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( pin_attempt_V_ap_vld_in_sig );
    sensitive << ( counter_in_ap_vld_in_sig );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( pin_attempt_V_ap_vld_in_sig );
    sensitive << ( counter_in_ap_vld_in_sig );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( p_s_phi_fu_119_p4 );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_counter_in_ap_vld_in_sig);
    sensitive << ( counter_in_ap_vld );
    sensitive << ( counter_in_ap_vld_preg );

    SC_METHOD(thread_counter_in_blk_n);
    sensitive << ( counter_in_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_counter_in_in_sig);
    sensitive << ( counter_in );
    sensitive << ( counter_in_preg );
    sensitive << ( counter_in_ap_vld );

    SC_METHOD(thread_increment_counter);
    sensitive << ( or_cond_fu_139_p2 );
    sensitive << ( ap_condition_118 );

    SC_METHOD(thread_increment_counter_ap_vld);
    sensitive << ( pin_attempt_V_ap_vld_in_sig );
    sensitive << ( counter_in_ap_vld_in_sig );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( or_cond_fu_139_p2 );

    SC_METHOD(thread_key_out_V);
    sensitive << ( pin_attempt_V_in_sig );
    sensitive << ( or_cond_fu_139_p2 );
    sensitive << ( ap_condition_118 );

    SC_METHOD(thread_key_out_V_ap_vld);
    sensitive << ( pin_attempt_V_ap_vld_in_sig );
    sensitive << ( counter_in_ap_vld_in_sig );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( or_cond_fu_139_p2 );

    SC_METHOD(thread_or_cond_fu_139_p2);
    sensitive << ( tmp_fu_127_p2 );
    sensitive << ( tmp_1_fu_133_p2 );

    SC_METHOD(thread_p_s_phi_fu_119_p4);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( or_cond_fu_139_p2 );

    SC_METHOD(thread_pin_attempt_V_ap_vld_in_sig);
    sensitive << ( pin_attempt_V_ap_vld );
    sensitive << ( pin_attempt_V_ap_vld_preg );

    SC_METHOD(thread_pin_attempt_V_blk_n);
    sensitive << ( pin_attempt_V_ap_vld );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_pin_attempt_V_in_sig);
    sensitive << ( pin_attempt_V );
    sensitive << ( pin_attempt_V_preg );
    sensitive << ( pin_attempt_V_ap_vld );

    SC_METHOD(thread_reset_counter);
    sensitive << ( or_cond_fu_139_p2 );
    sensitive << ( ap_condition_118 );

    SC_METHOD(thread_reset_counter_ap_vld);
    sensitive << ( pin_attempt_V_ap_vld_in_sig );
    sensitive << ( counter_in_ap_vld_in_sig );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( or_cond_fu_139_p2 );

    SC_METHOD(thread_secure_storage_in_V_address0);
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_secure_storage_in_V_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_tmp_1_fu_133_p2);
    sensitive << ( secure_storage_in_V_q0 );
    sensitive << ( pin_attempt_V_in_sig );
    sensitive << ( pin_attempt_V_ap_vld_in_sig );
    sensitive << ( counter_in_ap_vld_in_sig );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_tmp_fu_127_p2);
    sensitive << ( pin_attempt_V_ap_vld_in_sig );
    sensitive << ( counter_in_in_sig );
    sensitive << ( counter_in_ap_vld_in_sig );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( pin_attempt_V_ap_vld_in_sig );
    sensitive << ( counter_in_ap_vld_in_sig );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "01";
    pin_attempt_V_preg = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    pin_attempt_V_ap_vld_preg = SC_LOGIC_0;
    counter_in_preg = "00000000000000000000000000000000";
    counter_in_ap_vld_preg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "secure_enclave_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, key_out_V, "(port)key_out_V");
    sc_trace(mVcdFile, key_out_V_ap_vld, "(port)key_out_V_ap_vld");
    sc_trace(mVcdFile, s_axi_AXILiteS_AWVALID, "(port)s_axi_AXILiteS_AWVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_AWREADY, "(port)s_axi_AXILiteS_AWREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_AWADDR, "(port)s_axi_AXILiteS_AWADDR");
    sc_trace(mVcdFile, s_axi_AXILiteS_WVALID, "(port)s_axi_AXILiteS_WVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_WREADY, "(port)s_axi_AXILiteS_WREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_WDATA, "(port)s_axi_AXILiteS_WDATA");
    sc_trace(mVcdFile, s_axi_AXILiteS_WSTRB, "(port)s_axi_AXILiteS_WSTRB");
    sc_trace(mVcdFile, s_axi_AXILiteS_ARVALID, "(port)s_axi_AXILiteS_ARVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_ARREADY, "(port)s_axi_AXILiteS_ARREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_ARADDR, "(port)s_axi_AXILiteS_ARADDR");
    sc_trace(mVcdFile, s_axi_AXILiteS_RVALID, "(port)s_axi_AXILiteS_RVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_RREADY, "(port)s_axi_AXILiteS_RREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_RDATA, "(port)s_axi_AXILiteS_RDATA");
    sc_trace(mVcdFile, s_axi_AXILiteS_RRESP, "(port)s_axi_AXILiteS_RRESP");
    sc_trace(mVcdFile, s_axi_AXILiteS_BVALID, "(port)s_axi_AXILiteS_BVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_BREADY, "(port)s_axi_AXILiteS_BREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_BRESP, "(port)s_axi_AXILiteS_BRESP");
    sc_trace(mVcdFile, interrupt, "(port)interrupt");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, ap_start, "ap_start");
    sc_trace(mVcdFile, ap_done, "ap_done");
    sc_trace(mVcdFile, ap_idle, "ap_idle");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, ap_ready, "ap_ready");
    sc_trace(mVcdFile, secure_storage_in_V_address0, "secure_storage_in_V_address0");
    sc_trace(mVcdFile, secure_storage_in_V_ce0, "secure_storage_in_V_ce0");
    sc_trace(mVcdFile, secure_storage_in_V_q0, "secure_storage_in_V_q0");
    sc_trace(mVcdFile, pin_attempt_V, "pin_attempt_V");
    sc_trace(mVcdFile, pin_attempt_V_preg, "pin_attempt_V_preg");
    sc_trace(mVcdFile, pin_attempt_V_ap_vld, "pin_attempt_V_ap_vld");
    sc_trace(mVcdFile, pin_attempt_V_in_sig, "pin_attempt_V_in_sig");
    sc_trace(mVcdFile, pin_attempt_V_ap_vld_preg, "pin_attempt_V_ap_vld_preg");
    sc_trace(mVcdFile, pin_attempt_V_ap_vld_in_sig, "pin_attempt_V_ap_vld_in_sig");
    sc_trace(mVcdFile, counter_in, "counter_in");
    sc_trace(mVcdFile, counter_in_preg, "counter_in_preg");
    sc_trace(mVcdFile, counter_in_ap_vld, "counter_in_ap_vld");
    sc_trace(mVcdFile, counter_in_in_sig, "counter_in_in_sig");
    sc_trace(mVcdFile, counter_in_ap_vld_preg, "counter_in_ap_vld_preg");
    sc_trace(mVcdFile, counter_in_ap_vld_in_sig, "counter_in_ap_vld_in_sig");
    sc_trace(mVcdFile, increment_counter, "increment_counter");
    sc_trace(mVcdFile, increment_counter_ap_vld, "increment_counter_ap_vld");
    sc_trace(mVcdFile, reset_counter, "reset_counter");
    sc_trace(mVcdFile, reset_counter_ap_vld, "reset_counter_ap_vld");
    sc_trace(mVcdFile, ap_return, "ap_return");
    sc_trace(mVcdFile, pin_attempt_V_blk_n, "pin_attempt_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, counter_in_blk_n, "counter_in_blk_n");
    sc_trace(mVcdFile, p_s_phi_fu_119_p4, "p_s_phi_fu_119_p4");
    sc_trace(mVcdFile, or_cond_fu_139_p2, "or_cond_fu_139_p2");
    sc_trace(mVcdFile, tmp_fu_127_p2, "tmp_fu_127_p2");
    sc_trace(mVcdFile, tmp_1_fu_133_p2, "tmp_1_fu_133_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_condition_118, "ap_condition_118");
#endif

    }
    mHdltvinHandle.open("secure_enclave.hdltvin.dat");
    mHdltvoutHandle.open("secure_enclave.hdltvout.dat");
}

secure_enclave::~secure_enclave() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete secure_enclave_AXILiteS_s_axi_U;
}

void secure_enclave::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void secure_enclave::thread_ap_clk_no_reset_() {
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        counter_in_ap_vld_preg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()) && 
             !(esl_seteq<1,1,1>(counter_in_ap_vld_in_sig.read(), ap_const_logic_0) || esl_seteq<1,1,1>(pin_attempt_V_ap_vld_in_sig.read(), ap_const_logic_0)))) {
            counter_in_ap_vld_preg = ap_const_logic_0;
        } else if ((!(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1)) && 
                    esl_seteq<1,1,1>(ap_const_logic_1, counter_in_ap_vld.read()))) {
            counter_in_ap_vld_preg = counter_in_ap_vld.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        counter_in_preg = ap_const_lv32_0;
    } else {
        if ((!(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1)) && 
             esl_seteq<1,1,1>(ap_const_logic_1, counter_in_ap_vld.read()))) {
            counter_in_preg = counter_in.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        pin_attempt_V_ap_vld_preg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()) && 
             !(esl_seteq<1,1,1>(counter_in_ap_vld_in_sig.read(), ap_const_logic_0) || esl_seteq<1,1,1>(pin_attempt_V_ap_vld_in_sig.read(), ap_const_logic_0)))) {
            pin_attempt_V_ap_vld_preg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, pin_attempt_V_ap_vld.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1)))) {
            pin_attempt_V_ap_vld_preg = pin_attempt_V_ap_vld.read();
        }
    }
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        pin_attempt_V_preg = ap_const_lv128_lc_1;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, pin_attempt_V_ap_vld.read()) && 
             !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1)))) {
            pin_attempt_V_preg = pin_attempt_V.read();
        }
    }
}

void secure_enclave::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read().range(0, 0);
}

void secure_enclave::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read().range(1, 1);
}

void secure_enclave::thread_ap_condition_118() {
    ap_condition_118 = (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()) && !(esl_seteq<1,1,1>(counter_in_ap_vld_in_sig.read(), ap_const_logic_0) || esl_seteq<1,1,1>(pin_attempt_V_ap_vld_in_sig.read(), ap_const_logic_0)));
}

void secure_enclave::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()) && 
         !(esl_seteq<1,1,1>(counter_in_ap_vld_in_sig.read(), ap_const_logic_0) || esl_seteq<1,1,1>(pin_attempt_V_ap_vld_in_sig.read(), ap_const_logic_0)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void secure_enclave::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void secure_enclave::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()) && 
         !(esl_seteq<1,1,1>(counter_in_ap_vld_in_sig.read(), ap_const_logic_0) || esl_seteq<1,1,1>(pin_attempt_V_ap_vld_in_sig.read(), ap_const_logic_0)))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void secure_enclave::thread_ap_return() {
    ap_return = esl_zext<32,1>(p_s_phi_fu_119_p4.read());
}

void secure_enclave::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void secure_enclave::thread_counter_in_ap_vld_in_sig() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, counter_in_ap_vld.read())) {
        counter_in_ap_vld_in_sig = counter_in_ap_vld.read();
    } else {
        counter_in_ap_vld_in_sig = counter_in_ap_vld_preg.read();
    }
}

void secure_enclave::thread_counter_in_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()))) {
        counter_in_blk_n = counter_in_ap_vld.read();
    } else {
        counter_in_blk_n = ap_const_logic_1;
    }
}

void secure_enclave::thread_counter_in_in_sig() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, counter_in_ap_vld.read())) {
        counter_in_in_sig = counter_in.read();
    } else {
        counter_in_in_sig = counter_in_preg.read();
    }
}

void secure_enclave::thread_increment_counter() {
    if (esl_seteq<1,1,1>(ap_condition_118.read(), ap_const_boolean_1)) {
        if (!esl_seteq<1,1,1>(or_cond_fu_139_p2.read(), ap_const_lv1_0)) {
            increment_counter = ap_const_lv32_0;
        } else if (esl_seteq<1,1,1>(or_cond_fu_139_p2.read(), ap_const_lv1_0)) {
            increment_counter = ap_const_lv32_1;
        } else {
            increment_counter = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        increment_counter = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void secure_enclave::thread_increment_counter_ap_vld() {
    if (((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(counter_in_ap_vld_in_sig.read(), ap_const_logic_0) || esl_seteq<1,1,1>(pin_attempt_V_ap_vld_in_sig.read(), ap_const_logic_0)) && 
          !esl_seteq<1,1,1>(or_cond_fu_139_p2.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(counter_in_ap_vld_in_sig.read(), ap_const_logic_0) || esl_seteq<1,1,1>(pin_attempt_V_ap_vld_in_sig.read(), ap_const_logic_0)) && 
          esl_seteq<1,1,1>(or_cond_fu_139_p2.read(), ap_const_lv1_0)))) {
        increment_counter_ap_vld = ap_const_logic_1;
    } else {
        increment_counter_ap_vld = ap_const_logic_0;
    }
}

void secure_enclave::thread_key_out_V() {
    if (esl_seteq<1,1,1>(ap_condition_118.read(), ap_const_boolean_1)) {
        if (!esl_seteq<1,1,1>(or_cond_fu_139_p2.read(), ap_const_lv1_0)) {
            key_out_V = pin_attempt_V_in_sig.read();
        } else if (esl_seteq<1,1,1>(or_cond_fu_139_p2.read(), ap_const_lv1_0)) {
            key_out_V = ap_const_lv128_lc_1;
        } else {
            key_out_V =  (sc_lv<128>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        }
    } else {
        key_out_V =  (sc_lv<128>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void secure_enclave::thread_key_out_V_ap_vld() {
    if (((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(counter_in_ap_vld_in_sig.read(), ap_const_logic_0) || esl_seteq<1,1,1>(pin_attempt_V_ap_vld_in_sig.read(), ap_const_logic_0)) && 
          !esl_seteq<1,1,1>(or_cond_fu_139_p2.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(counter_in_ap_vld_in_sig.read(), ap_const_logic_0) || esl_seteq<1,1,1>(pin_attempt_V_ap_vld_in_sig.read(), ap_const_logic_0)) && 
          esl_seteq<1,1,1>(or_cond_fu_139_p2.read(), ap_const_lv1_0)))) {
        key_out_V_ap_vld = ap_const_logic_1;
    } else {
        key_out_V_ap_vld = ap_const_logic_0;
    }
}

void secure_enclave::thread_or_cond_fu_139_p2() {
    or_cond_fu_139_p2 = (tmp_fu_127_p2.read() & tmp_1_fu_133_p2.read());
}

void secure_enclave::thread_p_s_phi_fu_119_p4() {
    if (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read())) {
        if (esl_seteq<1,1,1>(or_cond_fu_139_p2.read(), ap_const_lv1_0)) {
            p_s_phi_fu_119_p4 = ap_const_lv1_0;
        } else if (!esl_seteq<1,1,1>(or_cond_fu_139_p2.read(), ap_const_lv1_0)) {
            p_s_phi_fu_119_p4 = ap_const_lv1_1;
        } else {
            p_s_phi_fu_119_p4 =  (sc_lv<1>) ("X");
        }
    } else {
        p_s_phi_fu_119_p4 =  (sc_lv<1>) ("X");
    }
}

void secure_enclave::thread_pin_attempt_V_ap_vld_in_sig() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, pin_attempt_V_ap_vld.read())) {
        pin_attempt_V_ap_vld_in_sig = pin_attempt_V_ap_vld.read();
    } else {
        pin_attempt_V_ap_vld_in_sig = pin_attempt_V_ap_vld_preg.read();
    }
}

void secure_enclave::thread_pin_attempt_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()))) {
        pin_attempt_V_blk_n = pin_attempt_V_ap_vld.read();
    } else {
        pin_attempt_V_blk_n = ap_const_logic_1;
    }
}

void secure_enclave::thread_pin_attempt_V_in_sig() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, pin_attempt_V_ap_vld.read())) {
        pin_attempt_V_in_sig = pin_attempt_V.read();
    } else {
        pin_attempt_V_in_sig = pin_attempt_V_preg.read();
    }
}

void secure_enclave::thread_reset_counter() {
    if (esl_seteq<1,1,1>(ap_condition_118.read(), ap_const_boolean_1)) {
        if (!esl_seteq<1,1,1>(or_cond_fu_139_p2.read(), ap_const_lv1_0)) {
            reset_counter = ap_const_lv32_1;
        } else if (esl_seteq<1,1,1>(or_cond_fu_139_p2.read(), ap_const_lv1_0)) {
            reset_counter = ap_const_lv32_0;
        } else {
            reset_counter = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        reset_counter = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void secure_enclave::thread_reset_counter_ap_vld() {
    if (((esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(counter_in_ap_vld_in_sig.read(), ap_const_logic_0) || esl_seteq<1,1,1>(pin_attempt_V_ap_vld_in_sig.read(), ap_const_logic_0)) && 
          !esl_seteq<1,1,1>(or_cond_fu_139_p2.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(counter_in_ap_vld_in_sig.read(), ap_const_logic_0) || esl_seteq<1,1,1>(pin_attempt_V_ap_vld_in_sig.read(), ap_const_logic_0)) && 
          esl_seteq<1,1,1>(or_cond_fu_139_p2.read(), ap_const_lv1_0)))) {
        reset_counter_ap_vld = ap_const_logic_1;
    } else {
        reset_counter_ap_vld = ap_const_logic_0;
    }
}

void secure_enclave::thread_secure_storage_in_V_address0() {
    secure_storage_in_V_address0 =  (sc_lv<1>) (ap_const_lv64_0);
}

void secure_enclave::thread_secure_storage_in_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_CS_fsm_state1.read(), ap_const_lv1_1) && 
         !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        secure_storage_in_V_ce0 = ap_const_logic_1;
    } else {
        secure_storage_in_V_ce0 = ap_const_logic_0;
    }
}

void secure_enclave::thread_tmp_1_fu_133_p2() {
    tmp_1_fu_133_p2 = (!secure_storage_in_V_q0.read().is_01() || !pin_attempt_V_in_sig.read().is_01())? sc_lv<1>(): sc_lv<1>(secure_storage_in_V_q0.read() == pin_attempt_V_in_sig.read());
}

void secure_enclave::thread_tmp_fu_127_p2() {
    tmp_fu_127_p2 = (!counter_in_in_sig.read().is_01() || !ap_const_lv32_5.is_01())? sc_lv<1>(): (sc_biguint<32>(counter_in_in_sig.read()) < sc_biguint<32>(ap_const_lv32_5));
}

void secure_enclave::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(counter_in_ap_vld_in_sig.read(), ap_const_logic_0) || esl_seteq<1,1,1>(pin_attempt_V_ap_vld_in_sig.read(), ap_const_logic_0))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<2>) ("XX");
            break;
    }
}

void secure_enclave::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"key_out_V\" :  \"" << key_out_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"key_out_V_ap_vld\" :  \"" << key_out_V_ap_vld.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_AWVALID\" :  \"" << s_axi_AXILiteS_AWVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_AWREADY\" :  \"" << s_axi_AXILiteS_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_AWADDR\" :  \"" << s_axi_AXILiteS_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_WVALID\" :  \"" << s_axi_AXILiteS_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_WREADY\" :  \"" << s_axi_AXILiteS_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_WDATA\" :  \"" << s_axi_AXILiteS_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_WSTRB\" :  \"" << s_axi_AXILiteS_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_ARVALID\" :  \"" << s_axi_AXILiteS_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_ARREADY\" :  \"" << s_axi_AXILiteS_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_ARADDR\" :  \"" << s_axi_AXILiteS_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_RVALID\" :  \"" << s_axi_AXILiteS_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_RREADY\" :  \"" << s_axi_AXILiteS_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_RDATA\" :  \"" << s_axi_AXILiteS_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_RRESP\" :  \"" << s_axi_AXILiteS_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_BVALID\" :  \"" << s_axi_AXILiteS_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_BREADY\" :  \"" << s_axi_AXILiteS_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_BRESP\" :  \"" << s_axi_AXILiteS_BRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"interrupt\" :  \"" << interrupt.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
