// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "crypto_sign_ed25519_21.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic crypto_sign_ed25519_21::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic crypto_sign_ed25519_21::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<8> crypto_sign_ed25519_21::ap_ST_fsm_state1 = "1";
const sc_lv<8> crypto_sign_ed25519_21::ap_ST_fsm_state2 = "10";
const sc_lv<8> crypto_sign_ed25519_21::ap_ST_fsm_state3 = "100";
const sc_lv<8> crypto_sign_ed25519_21::ap_ST_fsm_state4 = "1000";
const sc_lv<8> crypto_sign_ed25519_21::ap_ST_fsm_state5 = "10000";
const sc_lv<8> crypto_sign_ed25519_21::ap_ST_fsm_state6 = "100000";
const sc_lv<8> crypto_sign_ed25519_21::ap_ST_fsm_state7 = "1000000";
const sc_lv<8> crypto_sign_ed25519_21::ap_ST_fsm_state8 = "10000000";
const sc_lv<32> crypto_sign_ed25519_21::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> crypto_sign_ed25519_21::ap_const_lv32_1 = "1";
const sc_lv<32> crypto_sign_ed25519_21::ap_const_lv32_2 = "10";
const sc_lv<1> crypto_sign_ed25519_21::ap_const_lv1_0 = "0";
const sc_lv<1> crypto_sign_ed25519_21::ap_const_lv1_1 = "1";
const sc_lv<32> crypto_sign_ed25519_21::ap_const_lv32_3 = "11";
const sc_lv<32> crypto_sign_ed25519_21::ap_const_lv32_4 = "100";
const sc_lv<32> crypto_sign_ed25519_21::ap_const_lv32_5 = "101";
const sc_lv<5> crypto_sign_ed25519_21::ap_const_lv5_1E = "11110";
const sc_lv<32> crypto_sign_ed25519_21::ap_const_lv32_6 = "110";
const sc_lv<64> crypto_sign_ed25519_21::ap_const_lv64_1F = "11111";
const sc_lv<64> crypto_sign_ed25519_21::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<32> crypto_sign_ed25519_21::ap_const_lv32_7 = "111";
const sc_lv<32> crypto_sign_ed25519_21::ap_const_lv32_7F = "1111111";
const sc_lv<32> crypto_sign_ed25519_21::ap_const_lv32_FFFFFFFF = "11111111111111111111111111111111";
const sc_lv<32> crypto_sign_ed25519_21::ap_const_lv32_1F = "11111";
const sc_lv<5> crypto_sign_ed25519_21::ap_const_lv5_0 = "00000";
const sc_lv<5> crypto_sign_ed25519_21::ap_const_lv5_1F = "11111";
const sc_lv<32> crypto_sign_ed25519_21::ap_const_lv32_FF = "11111111";
const sc_lv<32> crypto_sign_ed25519_21::ap_const_lv32_FFFFFF13 = "11111111111111111111111100010011";
const sc_lv<32> crypto_sign_ed25519_21::ap_const_lv32_ED = "11101101";
const bool crypto_sign_ed25519_21::ap_const_boolean_1 = true;

crypto_sign_ed25519_21::crypto_sign_ed25519_21(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_i_29_fu_135_p2);
    sensitive << ( i_reg_72 );

    SC_METHOD(thread_i_30_fu_226_p2);
    sensitive << ( i_1_reg_93 );

    SC_METHOD(thread_m_1_1_fu_187_p2);
    sensitive << ( m1_reg_83 );
    sensitive << ( x_5_fu_181_p2 );

    SC_METHOD(thread_m_1_fu_161_p2);
    sensitive << ( m1_reg_83 );
    sensitive << ( tmp_765_fu_153_p3 );

    SC_METHOD(thread_r_v_addr_9_reg_280);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_fu_124_p2 );

    SC_METHOD(thread_r_v_addr_reg_252);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_r_v_address0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( r_v_addr_reg_252 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_fu_124_p2 );
    sensitive << ( r_v_addr_9_reg_280 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( r_v_addr_10_reg_303 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_753_fu_215_p2 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( tmp_s_fu_130_p1 );
    sensitive << ( tmp_755_fu_221_p1 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_r_v_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_fu_124_p2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_753_fu_215_p2 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_r_v_d0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( tmp_752_fu_201_p2 );
    sensitive << ( tmp_756_fu_232_p2 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( tmp_754_fu_245_p2 );

    SC_METHOD(thread_r_v_we0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_tmp_752_fu_201_p2);
    sensitive << ( r_v_load_reg_257 );
    sensitive << ( tmp_884_cast_cast_fu_193_p3 );

    SC_METHOD(thread_tmp_753_fu_215_p2);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( i_1_reg_93 );

    SC_METHOD(thread_tmp_754_fu_245_p2);
    sensitive << ( r_v_q0 );
    sensitive << ( tmp_890_cast_cast_fu_238_p3 );

    SC_METHOD(thread_tmp_755_fu_221_p1);
    sensitive << ( i_1_reg_93 );

    SC_METHOD(thread_tmp_756_fu_232_p2);
    sensitive << ( r_v_q0 );
    sensitive << ( tmp_886_cast_cast_reg_295 );

    SC_METHOD(thread_tmp_764_fu_173_p3);
    sensitive << ( x_4_fu_167_p2 );

    SC_METHOD(thread_tmp_765_fu_153_p3);
    sensitive << ( x_7_fu_147_p2 );

    SC_METHOD(thread_tmp_884_cast_cast_fu_193_p3);
    sensitive << ( m_1_1_fu_187_p2 );

    SC_METHOD(thread_tmp_886_cast_cast_fu_207_p3);
    sensitive << ( m_1_1_fu_187_p2 );

    SC_METHOD(thread_tmp_890_cast_cast_fu_238_p3);
    sensitive << ( m_1_1_reg_290 );

    SC_METHOD(thread_tmp_fu_124_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( i_reg_72 );

    SC_METHOD(thread_tmp_s_fu_130_p1);
    sensitive << ( i_reg_72 );

    SC_METHOD(thread_x_2_fu_110_p2);
    sensitive << ( x_fu_104_p2 );

    SC_METHOD(thread_x_4_fu_167_p2);
    sensitive << ( r_v_q0 );

    SC_METHOD(thread_x_5_fu_181_p2);
    sensitive << ( tmp_764_fu_173_p3 );

    SC_METHOD(thread_x_6_fu_141_p2);
    sensitive << ( r_v_q0 );

    SC_METHOD(thread_x_7_fu_147_p2);
    sensitive << ( x_6_fu_141_p2 );

    SC_METHOD(thread_x_fu_104_p2);
    sensitive << ( r_v_q0 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_fu_124_p2 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_753_fu_215_p2 );

    ap_CS_fsm = "00000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "crypto_sign_ed25519_21_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, r_v_address0, "(port)r_v_address0");
    sc_trace(mVcdFile, r_v_ce0, "(port)r_v_ce0");
    sc_trace(mVcdFile, r_v_we0, "(port)r_v_we0");
    sc_trace(mVcdFile, r_v_d0, "(port)r_v_d0");
    sc_trace(mVcdFile, r_v_q0, "(port)r_v_q0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, r_v_addr_reg_252, "r_v_addr_reg_252");
    sc_trace(mVcdFile, r_v_load_reg_257, "r_v_load_reg_257");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_fu_124_p2, "tmp_fu_124_p2");
    sc_trace(mVcdFile, i_29_fu_135_p2, "i_29_fu_135_p2");
    sc_trace(mVcdFile, i_29_reg_275, "i_29_reg_275");
    sc_trace(mVcdFile, r_v_addr_9_reg_280, "r_v_addr_9_reg_280");
    sc_trace(mVcdFile, m_1_fu_161_p2, "m_1_fu_161_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, m_1_1_fu_187_p2, "m_1_1_fu_187_p2");
    sc_trace(mVcdFile, m_1_1_reg_290, "m_1_1_reg_290");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, tmp_886_cast_cast_fu_207_p3, "tmp_886_cast_cast_fu_207_p3");
    sc_trace(mVcdFile, tmp_886_cast_cast_reg_295, "tmp_886_cast_cast_reg_295");
    sc_trace(mVcdFile, r_v_addr_10_reg_303, "r_v_addr_10_reg_303");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, tmp_753_fu_215_p2, "tmp_753_fu_215_p2");
    sc_trace(mVcdFile, i_30_fu_226_p2, "i_30_fu_226_p2");
    sc_trace(mVcdFile, i_30_reg_308, "i_30_reg_308");
    sc_trace(mVcdFile, i_reg_72, "i_reg_72");
    sc_trace(mVcdFile, m1_reg_83, "m1_reg_83");
    sc_trace(mVcdFile, i_1_reg_93, "i_1_reg_93");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, tmp_s_fu_130_p1, "tmp_s_fu_130_p1");
    sc_trace(mVcdFile, tmp_755_fu_221_p1, "tmp_755_fu_221_p1");
    sc_trace(mVcdFile, tmp_752_fu_201_p2, "tmp_752_fu_201_p2");
    sc_trace(mVcdFile, tmp_756_fu_232_p2, "tmp_756_fu_232_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, tmp_754_fu_245_p2, "tmp_754_fu_245_p2");
    sc_trace(mVcdFile, x_fu_104_p2, "x_fu_104_p2");
    sc_trace(mVcdFile, x_2_fu_110_p2, "x_2_fu_110_p2");
    sc_trace(mVcdFile, x_6_fu_141_p2, "x_6_fu_141_p2");
    sc_trace(mVcdFile, x_7_fu_147_p2, "x_7_fu_147_p2");
    sc_trace(mVcdFile, tmp_765_fu_153_p3, "tmp_765_fu_153_p3");
    sc_trace(mVcdFile, x_4_fu_167_p2, "x_4_fu_167_p2");
    sc_trace(mVcdFile, tmp_764_fu_173_p3, "tmp_764_fu_173_p3");
    sc_trace(mVcdFile, x_5_fu_181_p2, "x_5_fu_181_p2");
    sc_trace(mVcdFile, tmp_884_cast_cast_fu_193_p3, "tmp_884_cast_cast_fu_193_p3");
    sc_trace(mVcdFile, tmp_890_cast_cast_fu_238_p3, "tmp_890_cast_cast_fu_238_p3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

crypto_sign_ed25519_21::~crypto_sign_ed25519_21() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void crypto_sign_ed25519_21::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        i_1_reg_93 = i_30_reg_308.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        i_1_reg_93 = ap_const_lv5_1E;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        i_reg_72 = i_29_reg_275.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_72 = ap_const_lv5_1E;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        m1_reg_83 = m_1_fu_161_p2.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        m1_reg_83 = x_2_fu_110_p2.read().range(31, 31);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(tmp_fu_124_p2.read(), ap_const_lv1_0))) {
        i_29_reg_275 = i_29_fu_135_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_753_fu_215_p2.read()))) {
        i_30_reg_308 = i_30_fu_226_p2.read();
        r_v_addr_10_reg_303 =  (sc_lv<5>) (tmp_755_fu_221_p1.read());
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        m_1_1_reg_290 = m_1_1_fu_187_p2.read();
        tmp_886_cast_cast_reg_295 = tmp_886_cast_cast_fu_207_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        r_v_load_reg_257 = r_v_q0.read();
    }
}

void crypto_sign_ed25519_21::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void crypto_sign_ed25519_21::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void crypto_sign_ed25519_21::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void crypto_sign_ed25519_21::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void crypto_sign_ed25519_21::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void crypto_sign_ed25519_21::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void crypto_sign_ed25519_21::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void crypto_sign_ed25519_21::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void crypto_sign_ed25519_21::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_21::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_21::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_21::thread_i_29_fu_135_p2() {
    i_29_fu_135_p2 = (!i_reg_72.read().is_01() || !ap_const_lv5_1F.is_01())? sc_lv<5>(): (sc_biguint<5>(i_reg_72.read()) + sc_bigint<5>(ap_const_lv5_1F));
}

void crypto_sign_ed25519_21::thread_i_30_fu_226_p2() {
    i_30_fu_226_p2 = (!i_1_reg_93.read().is_01() || !ap_const_lv5_1F.is_01())? sc_lv<5>(): (sc_biguint<5>(i_1_reg_93.read()) + sc_bigint<5>(ap_const_lv5_1F));
}

void crypto_sign_ed25519_21::thread_m_1_1_fu_187_p2() {
    m_1_1_fu_187_p2 = (m1_reg_83.read() & x_5_fu_181_p2.read());
}

void crypto_sign_ed25519_21::thread_m_1_fu_161_p2() {
    m_1_fu_161_p2 = (tmp_765_fu_153_p3.read() & m1_reg_83.read());
}

void crypto_sign_ed25519_21::thread_r_v_addr_9_reg_280() {
    r_v_addr_9_reg_280 =  (sc_lv<5>) (ap_const_lv64_0);
}

void crypto_sign_ed25519_21::thread_r_v_addr_reg_252() {
    r_v_addr_reg_252 =  (sc_lv<5>) (ap_const_lv64_1F);
}

void crypto_sign_ed25519_21::thread_r_v_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        r_v_address0 = r_v_addr_10_reg_303.read();
    } else if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, tmp_753_fu_215_p2.read())) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()))) {
        r_v_address0 = r_v_addr_9_reg_280.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_753_fu_215_p2.read()))) {
        r_v_address0 =  (sc_lv<5>) (tmp_755_fu_221_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        r_v_address0 = r_v_addr_reg_252.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(tmp_fu_124_p2.read(), ap_const_lv1_1))) {
        r_v_address0 =  (sc_lv<5>) (ap_const_lv64_0);
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(tmp_fu_124_p2.read(), ap_const_lv1_0))) {
        r_v_address0 =  (sc_lv<5>) (tmp_s_fu_130_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        r_v_address0 =  (sc_lv<5>) (ap_const_lv64_1F);
    } else {
        r_v_address0 = "XXXXX";
    }
}

void crypto_sign_ed25519_21::thread_r_v_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(tmp_fu_124_p2.read(), ap_const_lv1_0)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(tmp_fu_124_p2.read(), ap_const_lv1_1)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_753_fu_215_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, tmp_753_fu_215_p2.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()))) {
        r_v_ce0 = ap_const_logic_1;
    } else {
        r_v_ce0 = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_21::thread_r_v_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        r_v_d0 = tmp_754_fu_245_p2.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        r_v_d0 = tmp_756_fu_232_p2.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        r_v_d0 = tmp_752_fu_201_p2.read();
    } else {
        r_v_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void crypto_sign_ed25519_21::thread_r_v_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()))) {
        r_v_we0 = ap_const_logic_1;
    } else {
        r_v_we0 = ap_const_logic_0;
    }
}

void crypto_sign_ed25519_21::thread_tmp_752_fu_201_p2() {
    tmp_752_fu_201_p2 = (!r_v_load_reg_257.read().is_01() || !tmp_884_cast_cast_fu_193_p3.read().is_01())? sc_lv<32>(): (sc_biguint<32>(r_v_load_reg_257.read()) - sc_biguint<32>(tmp_884_cast_cast_fu_193_p3.read()));
}

void crypto_sign_ed25519_21::thread_tmp_753_fu_215_p2() {
    tmp_753_fu_215_p2 = (!i_1_reg_93.read().is_01() || !ap_const_lv5_0.is_01())? sc_lv<1>(): sc_lv<1>(i_1_reg_93.read() == ap_const_lv5_0);
}

void crypto_sign_ed25519_21::thread_tmp_754_fu_245_p2() {
    tmp_754_fu_245_p2 = (!r_v_q0.read().is_01() || !tmp_890_cast_cast_fu_238_p3.read().is_01())? sc_lv<32>(): (sc_biguint<32>(r_v_q0.read()) - sc_biguint<32>(tmp_890_cast_cast_fu_238_p3.read()));
}

void crypto_sign_ed25519_21::thread_tmp_755_fu_221_p1() {
    tmp_755_fu_221_p1 = esl_zext<64,5>(i_1_reg_93.read());
}

void crypto_sign_ed25519_21::thread_tmp_756_fu_232_p2() {
    tmp_756_fu_232_p2 = (!r_v_q0.read().is_01() || !tmp_886_cast_cast_reg_295.read().is_01())? sc_lv<32>(): (sc_biguint<32>(r_v_q0.read()) - sc_biguint<32>(tmp_886_cast_cast_reg_295.read()));
}

void crypto_sign_ed25519_21::thread_tmp_764_fu_173_p3() {
    tmp_764_fu_173_p3 = x_4_fu_167_p2.read().range(31, 31);
}

void crypto_sign_ed25519_21::thread_tmp_765_fu_153_p3() {
    tmp_765_fu_153_p3 = x_7_fu_147_p2.read().range(31, 31);
}

void crypto_sign_ed25519_21::thread_tmp_884_cast_cast_fu_193_p3() {
    tmp_884_cast_cast_fu_193_p3 = (!m_1_1_fu_187_p2.read()[0].is_01())? sc_lv<32>(): ((m_1_1_fu_187_p2.read()[0].to_bool())? ap_const_lv32_7F: ap_const_lv32_0);
}

void crypto_sign_ed25519_21::thread_tmp_886_cast_cast_fu_207_p3() {
    tmp_886_cast_cast_fu_207_p3 = (!m_1_1_fu_187_p2.read()[0].is_01())? sc_lv<32>(): ((m_1_1_fu_187_p2.read()[0].to_bool())? ap_const_lv32_FF: ap_const_lv32_0);
}

void crypto_sign_ed25519_21::thread_tmp_890_cast_cast_fu_238_p3() {
    tmp_890_cast_cast_fu_238_p3 = (!m_1_1_reg_290.read()[0].is_01())? sc_lv<32>(): ((m_1_1_reg_290.read()[0].to_bool())? ap_const_lv32_ED: ap_const_lv32_0);
}

void crypto_sign_ed25519_21::thread_tmp_fu_124_p2() {
    tmp_fu_124_p2 = (!i_reg_72.read().is_01() || !ap_const_lv5_0.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_72.read() == ap_const_lv5_0);
}

void crypto_sign_ed25519_21::thread_tmp_s_fu_130_p1() {
    tmp_s_fu_130_p1 = esl_zext<64,5>(i_reg_72.read());
}

void crypto_sign_ed25519_21::thread_x_2_fu_110_p2() {
    x_2_fu_110_p2 = (!x_fu_104_p2.read().is_01() || !ap_const_lv32_FFFFFFFF.is_01())? sc_lv<32>(): (sc_biguint<32>(x_fu_104_p2.read()) + sc_bigint<32>(ap_const_lv32_FFFFFFFF));
}

void crypto_sign_ed25519_21::thread_x_4_fu_167_p2() {
    x_4_fu_167_p2 = (!r_v_q0.read().is_01() || !ap_const_lv32_FFFFFF13.is_01())? sc_lv<32>(): (sc_biguint<32>(r_v_q0.read()) + sc_bigint<32>(ap_const_lv32_FFFFFF13));
}

void crypto_sign_ed25519_21::thread_x_5_fu_181_p2() {
    x_5_fu_181_p2 = (tmp_764_fu_173_p3.read() ^ ap_const_lv1_1);
}

void crypto_sign_ed25519_21::thread_x_6_fu_141_p2() {
    x_6_fu_141_p2 = (r_v_q0.read() ^ ap_const_lv32_FF);
}

void crypto_sign_ed25519_21::thread_x_7_fu_147_p2() {
    x_7_fu_147_p2 = (!x_6_fu_141_p2.read().is_01() || !ap_const_lv32_FFFFFFFF.is_01())? sc_lv<32>(): (sc_biguint<32>(x_6_fu_141_p2.read()) + sc_bigint<32>(ap_const_lv32_FFFFFFFF));
}

void crypto_sign_ed25519_21::thread_x_fu_104_p2() {
    x_fu_104_p2 = (r_v_q0.read() ^ ap_const_lv32_7F);
}

void crypto_sign_ed25519_21::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(tmp_fu_124_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_753_fu_215_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state8;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<8>) ("XXXXXXXX");
            break;
    }
}

}
