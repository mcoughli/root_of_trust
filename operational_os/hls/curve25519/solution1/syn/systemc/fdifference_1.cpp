// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "fdifference_1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic fdifference_1::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic fdifference_1::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> fdifference_1::ap_ST_fsm_state1 = "1";
const sc_lv<3> fdifference_1::ap_ST_fsm_state2 = "10";
const sc_lv<3> fdifference_1::ap_ST_fsm_state3 = "100";
const sc_lv<32> fdifference_1::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> fdifference_1::ap_const_lv32_1 = "1";
const sc_lv<1> fdifference_1::ap_const_lv1_0 = "0";
const sc_lv<4> fdifference_1::ap_const_lv4_0 = "0000";
const sc_lv<32> fdifference_1::ap_const_lv32_2 = "10";
const sc_lv<4> fdifference_1::ap_const_lv4_A = "1010";
const sc_lv<4> fdifference_1::ap_const_lv4_1 = "1";
const sc_lv<1> fdifference_1::ap_const_lv1_1 = "1";
const bool fdifference_1::ap_const_boolean_1 = true;

fdifference_1::fdifference_1(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_51_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_51_p2 );

    SC_METHOD(thread_i_5_fu_57_p2);
    sensitive << ( i_reg_40 );

    SC_METHOD(thread_in_r_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_s_fu_63_p1 );

    SC_METHOD(thread_in_r_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_output_r_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( output_addr_reg_89 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_s_fu_63_p1 );

    SC_METHOD(thread_output_r_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_output_r_d0);
    sensitive << ( output_r_q0 );
    sensitive << ( in_r_q0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_output_r_we0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_fu_51_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_reg_40 );

    SC_METHOD(thread_tmp_s_fu_63_p1);
    sensitive << ( i_reg_40 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_51_p2 );

    ap_CS_fsm = "001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "fdifference_1_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, output_r_address0, "(port)output_r_address0");
    sc_trace(mVcdFile, output_r_ce0, "(port)output_r_ce0");
    sc_trace(mVcdFile, output_r_we0, "(port)output_r_we0");
    sc_trace(mVcdFile, output_r_d0, "(port)output_r_d0");
    sc_trace(mVcdFile, output_r_q0, "(port)output_r_q0");
    sc_trace(mVcdFile, in_r_address0, "(port)in_r_address0");
    sc_trace(mVcdFile, in_r_ce0, "(port)in_r_ce0");
    sc_trace(mVcdFile, in_r_q0, "(port)in_r_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, i_5_fu_57_p2, "i_5_fu_57_p2");
    sc_trace(mVcdFile, i_5_reg_79, "i_5_reg_79");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_fu_51_p2, "tmp_fu_51_p2");
    sc_trace(mVcdFile, output_addr_reg_89, "output_addr_reg_89");
    sc_trace(mVcdFile, i_reg_40, "i_reg_40");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_s_fu_63_p1, "tmp_s_fu_63_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

fdifference_1::~fdifference_1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void fdifference_1::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_reg_40 = i_5_reg_79.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_reg_40 = ap_const_lv4_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_5_reg_79 = i_5_fu_57_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_51_p2.read(), ap_const_lv1_0))) {
        output_addr_reg_89 =  (sc_lv<5>) (tmp_s_fu_63_p1.read());
    }
}

void fdifference_1::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void fdifference_1::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void fdifference_1::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void fdifference_1::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_51_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void fdifference_1::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void fdifference_1::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_51_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void fdifference_1::thread_i_5_fu_57_p2() {
    i_5_fu_57_p2 = (!i_reg_40.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i_reg_40.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void fdifference_1::thread_in_r_address0() {
    in_r_address0 =  (sc_lv<4>) (tmp_s_fu_63_p1.read());
}

void fdifference_1::thread_in_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        in_r_ce0 = ap_const_logic_1;
    } else {
        in_r_ce0 = ap_const_logic_0;
    }
}

void fdifference_1::thread_output_r_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        output_r_address0 = output_addr_reg_89.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        output_r_address0 =  (sc_lv<5>) (tmp_s_fu_63_p1.read());
    } else {
        output_r_address0 = "XXXXX";
    }
}

void fdifference_1::thread_output_r_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        output_r_ce0 = ap_const_logic_1;
    } else {
        output_r_ce0 = ap_const_logic_0;
    }
}

void fdifference_1::thread_output_r_d0() {
    output_r_d0 = (!in_r_q0.read().is_01() || !output_r_q0.read().is_01())? sc_lv<64>(): (sc_biguint<64>(in_r_q0.read()) - sc_biguint<64>(output_r_q0.read()));
}

void fdifference_1::thread_output_r_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        output_r_we0 = ap_const_logic_1;
    } else {
        output_r_we0 = ap_const_logic_0;
    }
}

void fdifference_1::thread_tmp_fu_51_p2() {
    tmp_fu_51_p2 = (!i_reg_40.read().is_01() || !ap_const_lv4_A.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_40.read() == ap_const_lv4_A);
}

void fdifference_1::thread_tmp_s_fu_63_p1() {
    tmp_s_fu_63_p1 = esl_zext<64,4>(i_reg_40.read());
}

void fdifference_1::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_51_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<3>) ("XXX");
            break;
    }
}

}
