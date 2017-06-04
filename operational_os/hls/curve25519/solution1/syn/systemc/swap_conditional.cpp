// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "swap_conditional.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic swap_conditional::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic swap_conditional::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> swap_conditional::ap_ST_fsm_state1 = "1";
const sc_lv<3> swap_conditional::ap_ST_fsm_state2 = "10";
const sc_lv<3> swap_conditional::ap_ST_fsm_state3 = "100";
const sc_lv<32> swap_conditional::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> swap_conditional::ap_const_lv32_1 = "1";
const sc_lv<1> swap_conditional::ap_const_lv1_0 = "0";
const sc_lv<4> swap_conditional::ap_const_lv4_0 = "0000";
const sc_lv<32> swap_conditional::ap_const_lv32_2 = "10";
const sc_lv<32> swap_conditional::ap_const_lv32_FFFFFFFF = "11111111111111111111111111111111";
const sc_lv<4> swap_conditional::ap_const_lv4_A = "1010";
const sc_lv<4> swap_conditional::ap_const_lv4_1 = "1";
const sc_lv<1> swap_conditional::ap_const_lv1_1 = "1";
const bool swap_conditional::ap_const_boolean_1 = true;

swap_conditional::swap_conditional(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_a_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( a_addr_reg_145 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_2_fu_85_p1 );

    SC_METHOD(thread_a_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_a_d0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_6_fu_110_p2 );

    SC_METHOD(thread_a_we0);
    sensitive << ( ap_CS_fsm_state3 );

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
    sensitive << ( tmp_1_fu_73_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_1_fu_73_p2 );

    SC_METHOD(thread_b_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( b_addr_reg_150 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_2_fu_85_p1 );

    SC_METHOD(thread_b_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_b_d0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_9_fu_121_p2 );

    SC_METHOD(thread_b_we0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_i_1_fu_79_p2);
    sensitive << ( i_reg_54 );

    SC_METHOD(thread_swap_cast_fu_65_p3);
    sensitive << ( iswap );

    SC_METHOD(thread_tmp_1_fu_73_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_reg_54 );

    SC_METHOD(thread_tmp_2_fu_85_p1);
    sensitive << ( i_reg_54 );

    SC_METHOD(thread_tmp_3_fu_95_p1);
    sensitive << ( b_q0 );

    SC_METHOD(thread_tmp_5_fu_99_p2);
    sensitive << ( tmp_3_fu_95_p1 );
    sensitive << ( tmp_fu_91_p1 );

    SC_METHOD(thread_tmp_6_fu_110_p2);
    sensitive << ( tmp_fu_91_p1 );
    sensitive << ( x_fu_105_p2 );

    SC_METHOD(thread_tmp_9_fu_121_p2);
    sensitive << ( tmp_3_fu_95_p1 );
    sensitive << ( x_fu_105_p2 );

    SC_METHOD(thread_tmp_fu_91_p1);
    sensitive << ( a_q0 );

    SC_METHOD(thread_x_fu_105_p2);
    sensitive << ( swap_cast_reg_132 );
    sensitive << ( tmp_5_fu_99_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_1_fu_73_p2 );

    ap_CS_fsm = "001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "swap_conditional_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, a_address0, "(port)a_address0");
    sc_trace(mVcdFile, a_ce0, "(port)a_ce0");
    sc_trace(mVcdFile, a_we0, "(port)a_we0");
    sc_trace(mVcdFile, a_d0, "(port)a_d0");
    sc_trace(mVcdFile, a_q0, "(port)a_q0");
    sc_trace(mVcdFile, b_address0, "(port)b_address0");
    sc_trace(mVcdFile, b_ce0, "(port)b_ce0");
    sc_trace(mVcdFile, b_we0, "(port)b_we0");
    sc_trace(mVcdFile, b_d0, "(port)b_d0");
    sc_trace(mVcdFile, b_q0, "(port)b_q0");
    sc_trace(mVcdFile, iswap, "(port)iswap");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, swap_cast_fu_65_p3, "swap_cast_fu_65_p3");
    sc_trace(mVcdFile, swap_cast_reg_132, "swap_cast_reg_132");
    sc_trace(mVcdFile, i_1_fu_79_p2, "i_1_fu_79_p2");
    sc_trace(mVcdFile, i_1_reg_140, "i_1_reg_140");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, a_addr_reg_145, "a_addr_reg_145");
    sc_trace(mVcdFile, tmp_1_fu_73_p2, "tmp_1_fu_73_p2");
    sc_trace(mVcdFile, b_addr_reg_150, "b_addr_reg_150");
    sc_trace(mVcdFile, i_reg_54, "i_reg_54");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_2_fu_85_p1, "tmp_2_fu_85_p1");
    sc_trace(mVcdFile, tmp_3_fu_95_p1, "tmp_3_fu_95_p1");
    sc_trace(mVcdFile, tmp_fu_91_p1, "tmp_fu_91_p1");
    sc_trace(mVcdFile, tmp_5_fu_99_p2, "tmp_5_fu_99_p2");
    sc_trace(mVcdFile, x_fu_105_p2, "x_fu_105_p2");
    sc_trace(mVcdFile, tmp_6_fu_110_p2, "tmp_6_fu_110_p2");
    sc_trace(mVcdFile, tmp_9_fu_121_p2, "tmp_9_fu_121_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

swap_conditional::~swap_conditional() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void swap_conditional::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_reg_54 = i_1_reg_140.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_reg_54 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_1_fu_73_p2.read(), ap_const_lv1_0))) {
        a_addr_reg_145 =  (sc_lv<5>) (tmp_2_fu_85_p1.read());
        b_addr_reg_150 =  (sc_lv<5>) (tmp_2_fu_85_p1.read());
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_1_reg_140 = i_1_fu_79_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        swap_cast_reg_132 = swap_cast_fu_65_p3.read();
    }
}

void swap_conditional::thread_a_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        a_address0 = a_addr_reg_145.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        a_address0 =  (sc_lv<5>) (tmp_2_fu_85_p1.read());
    } else {
        a_address0 = "XXXXX";
    }
}

void swap_conditional::thread_a_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        a_ce0 = ap_const_logic_1;
    } else {
        a_ce0 = ap_const_logic_0;
    }
}

void swap_conditional::thread_a_d0() {
    a_d0 = esl_sext<64,32>(tmp_6_fu_110_p2.read());
}

void swap_conditional::thread_a_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        a_we0 = ap_const_logic_1;
    } else {
        a_we0 = ap_const_logic_0;
    }
}

void swap_conditional::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void swap_conditional::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void swap_conditional::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void swap_conditional::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_1_fu_73_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void swap_conditional::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void swap_conditional::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_1_fu_73_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void swap_conditional::thread_b_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        b_address0 = b_addr_reg_150.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        b_address0 =  (sc_lv<5>) (tmp_2_fu_85_p1.read());
    } else {
        b_address0 = "XXXXX";
    }
}

void swap_conditional::thread_b_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        b_ce0 = ap_const_logic_1;
    } else {
        b_ce0 = ap_const_logic_0;
    }
}

void swap_conditional::thread_b_d0() {
    b_d0 = esl_sext<64,32>(tmp_9_fu_121_p2.read());
}

void swap_conditional::thread_b_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        b_we0 = ap_const_logic_1;
    } else {
        b_we0 = ap_const_logic_0;
    }
}

void swap_conditional::thread_i_1_fu_79_p2() {
    i_1_fu_79_p2 = (!i_reg_54.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i_reg_54.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void swap_conditional::thread_swap_cast_fu_65_p3() {
    swap_cast_fu_65_p3 = (!iswap.read()[0].is_01())? sc_lv<32>(): ((iswap.read()[0].to_bool())? ap_const_lv32_FFFFFFFF: ap_const_lv32_0);
}

void swap_conditional::thread_tmp_1_fu_73_p2() {
    tmp_1_fu_73_p2 = (!i_reg_54.read().is_01() || !ap_const_lv4_A.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_54.read() == ap_const_lv4_A);
}

void swap_conditional::thread_tmp_2_fu_85_p1() {
    tmp_2_fu_85_p1 = esl_zext<64,4>(i_reg_54.read());
}

void swap_conditional::thread_tmp_3_fu_95_p1() {
    tmp_3_fu_95_p1 = b_q0.read().range(32-1, 0);
}

void swap_conditional::thread_tmp_5_fu_99_p2() {
    tmp_5_fu_99_p2 = (tmp_3_fu_95_p1.read() ^ tmp_fu_91_p1.read());
}

void swap_conditional::thread_tmp_6_fu_110_p2() {
    tmp_6_fu_110_p2 = (x_fu_105_p2.read() ^ tmp_fu_91_p1.read());
}

void swap_conditional::thread_tmp_9_fu_121_p2() {
    tmp_9_fu_121_p2 = (tmp_3_fu_95_p1.read() ^ x_fu_105_p2.read());
}

void swap_conditional::thread_tmp_fu_91_p1() {
    tmp_fu_91_p1 = a_q0.read().range(32-1, 0);
}

void swap_conditional::thread_x_fu_105_p2() {
    x_fu_105_p2 = (tmp_5_fu_99_p2.read() & swap_cast_reg_132.read());
}

void swap_conditional::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_1_fu_73_p2.read(), ap_const_lv1_1))) {
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
