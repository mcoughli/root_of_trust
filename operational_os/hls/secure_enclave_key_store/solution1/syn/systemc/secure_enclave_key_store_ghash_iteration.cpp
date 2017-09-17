// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "secure_enclave_key_store_ghash_iteration.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic secure_enclave_key_store_ghash_iteration::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic secure_enclave_key_store_ghash_iteration::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> secure_enclave_key_store_ghash_iteration::ap_ST_st1_fsm_0 = "1";
const sc_lv<2> secure_enclave_key_store_ghash_iteration::ap_ST_st2_fsm_1 = "10";
const sc_lv<32> secure_enclave_key_store_ghash_iteration::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> secure_enclave_key_store_ghash_iteration::ap_const_lv1_1 = "1";
const sc_lv<32> secure_enclave_key_store_ghash_iteration::ap_const_lv32_1 = "1";
const sc_lv<1> secure_enclave_key_store_ghash_iteration::ap_const_lv1_0 = "0";
const sc_lv<128> secure_enclave_key_store_ghash_iteration::ap_const_lv128_lc_1 = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<8> secure_enclave_key_store_ghash_iteration::ap_const_lv8_0 = "00000000";
const sc_lv<8> secure_enclave_key_store_ghash_iteration::ap_const_lv8_80 = "10000000";
const sc_lv<8> secure_enclave_key_store_ghash_iteration::ap_const_lv8_1 = "1";
const sc_lv<32> secure_enclave_key_store_ghash_iteration::ap_const_lv32_7F = "1111111";

secure_enclave_key_store_ghash_iteration::secure_enclave_key_store_ghash_iteration(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_agg_result_V_0_r_V_i_fu_123_p3);
    sensitive << ( agg_result_V_i_reg_46 );
    sensitive << ( tmp_fu_110_p3 );
    sensitive << ( z_V_fu_117_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond_i_fu_98_p2 );

    SC_METHOD(thread_ap_sig_19);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_42);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_19 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_42 );

    SC_METHOD(thread_exitcond_i_fu_98_p2);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( i_assign_reg_77 );

    SC_METHOD(thread_i_assign_cast1_fu_94_p1);
    sensitive << ( i_assign_reg_77 );

    SC_METHOD(thread_i_fu_104_p2);
    sensitive << ( i_assign_reg_77 );

    SC_METHOD(thread_lhs_V_r_V_i_fu_131_p3);
    sensitive << ( lhs_V_reg_57 );
    sensitive << ( tmp_fu_110_p3 );
    sensitive << ( z_V_fu_117_p2 );

    SC_METHOD(thread_r_V_1_fu_139_p4);
    sensitive << ( rhs_V_reg_68 );

    SC_METHOD(thread_r_V_2_fu_149_p1);
    sensitive << ( r_V_1_fu_139_p4 );

    SC_METHOD(thread_r_V_3_fu_88_p2);
    sensitive << ( d_V );
    sensitive << ( x_prev_V );

    SC_METHOD(thread_tmp_fu_110_p3);
    sensitive << ( h_V_read_reg_153 );
    sensitive << ( i_assign_cast1_fu_94_p1 );

    SC_METHOD(thread_z_V_fu_117_p2);
    sensitive << ( lhs_V_reg_57 );
    sensitive << ( rhs_V_reg_68 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_i_fu_98_p2 );

    ap_CS_fsm = "01";
    ap_return_preg = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "secure_enclave_key_store_ghash_iteration_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, h_V, "(port)h_V");
    sc_trace(mVcdFile, d_V, "(port)d_V");
    sc_trace(mVcdFile, x_prev_V, "(port)x_prev_V");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_19, "ap_sig_19");
    sc_trace(mVcdFile, h_V_read_reg_153, "h_V_read_reg_153");
    sc_trace(mVcdFile, r_V_3_fu_88_p2, "r_V_3_fu_88_p2");
    sc_trace(mVcdFile, i_fu_104_p2, "i_fu_104_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_42, "ap_sig_42");
    sc_trace(mVcdFile, agg_result_V_0_r_V_i_fu_123_p3, "agg_result_V_0_r_V_i_fu_123_p3");
    sc_trace(mVcdFile, exitcond_i_fu_98_p2, "exitcond_i_fu_98_p2");
    sc_trace(mVcdFile, lhs_V_r_V_i_fu_131_p3, "lhs_V_r_V_i_fu_131_p3");
    sc_trace(mVcdFile, r_V_2_fu_149_p1, "r_V_2_fu_149_p1");
    sc_trace(mVcdFile, agg_result_V_i_reg_46, "agg_result_V_i_reg_46");
    sc_trace(mVcdFile, lhs_V_reg_57, "lhs_V_reg_57");
    sc_trace(mVcdFile, rhs_V_reg_68, "rhs_V_reg_68");
    sc_trace(mVcdFile, i_assign_reg_77, "i_assign_reg_77");
    sc_trace(mVcdFile, i_assign_cast1_fu_94_p1, "i_assign_cast1_fu_94_p1");
    sc_trace(mVcdFile, tmp_fu_110_p3, "tmp_fu_110_p3");
    sc_trace(mVcdFile, z_V_fu_117_p2, "z_V_fu_117_p2");
    sc_trace(mVcdFile, r_V_1_fu_139_p4, "r_V_1_fu_139_p4");
    sc_trace(mVcdFile, ap_return_preg, "ap_return_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

secure_enclave_key_store_ghash_iteration::~secure_enclave_key_store_ghash_iteration() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void secure_enclave_key_store_ghash_iteration::thread_ap_clk_no_reset_() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         esl_seteq<1,1,1>(exitcond_i_fu_98_p2.read(), ap_const_lv1_0))) {
        agg_result_V_i_reg_46 = agg_result_V_0_r_V_i_fu_123_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        agg_result_V_i_reg_46 = ap_const_lv128_lc_1;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_preg = ap_const_lv128_lc_1;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
             !esl_seteq<1,1,1>(exitcond_i_fu_98_p2.read(), ap_const_lv1_0))) {
            ap_return_preg = agg_result_V_i_reg_46.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         esl_seteq<1,1,1>(exitcond_i_fu_98_p2.read(), ap_const_lv1_0))) {
        i_assign_reg_77 = i_fu_104_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        i_assign_reg_77 = ap_const_lv8_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         esl_seteq<1,1,1>(exitcond_i_fu_98_p2.read(), ap_const_lv1_0))) {
        lhs_V_reg_57 = lhs_V_r_V_i_fu_131_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        lhs_V_reg_57 = ap_const_lv128_lc_1;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         esl_seteq<1,1,1>(exitcond_i_fu_98_p2.read(), ap_const_lv1_0))) {
        rhs_V_reg_68 = r_V_2_fu_149_p1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        rhs_V_reg_68 = r_V_3_fu_88_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && !esl_seteq<1,1,1>(exitcond_i_fu_98_p2.read(), ap_const_lv1_0))) {
        ap_return = agg_result_V_i_reg_46.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        h_V_read_reg_153 = h_V.read();
    }
}

void secure_enclave_key_store_ghash_iteration::thread_agg_result_V_0_r_V_i_fu_123_p3() {
    agg_result_V_0_r_V_i_fu_123_p3 = (!tmp_fu_110_p3.read()[0].is_01())? sc_lv<128>(): ((tmp_fu_110_p3.read()[0].to_bool())? z_V_fu_117_p2.read(): agg_result_V_i_reg_46.read());
}

void secure_enclave_key_store_ghash_iteration::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void secure_enclave_key_store_ghash_iteration::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void secure_enclave_key_store_ghash_iteration::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(exitcond_i_fu_98_p2.read(), ap_const_lv1_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void secure_enclave_key_store_ghash_iteration::thread_ap_sig_19() {
    ap_sig_19 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void secure_enclave_key_store_ghash_iteration::thread_ap_sig_42() {
    ap_sig_42 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void secure_enclave_key_store_ghash_iteration::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_19.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void secure_enclave_key_store_ghash_iteration::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_42.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void secure_enclave_key_store_ghash_iteration::thread_exitcond_i_fu_98_p2() {
    exitcond_i_fu_98_p2 = (!i_assign_reg_77.read().is_01() || !ap_const_lv8_80.is_01())? sc_lv<1>(): sc_lv<1>(i_assign_reg_77.read() == ap_const_lv8_80);
}

void secure_enclave_key_store_ghash_iteration::thread_i_assign_cast1_fu_94_p1() {
    i_assign_cast1_fu_94_p1 = esl_zext<32,8>(i_assign_reg_77.read());
}

void secure_enclave_key_store_ghash_iteration::thread_i_fu_104_p2() {
    i_fu_104_p2 = (!i_assign_reg_77.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_biguint<8>(i_assign_reg_77.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void secure_enclave_key_store_ghash_iteration::thread_lhs_V_r_V_i_fu_131_p3() {
    lhs_V_r_V_i_fu_131_p3 = (!tmp_fu_110_p3.read()[0].is_01())? sc_lv<128>(): ((tmp_fu_110_p3.read()[0].to_bool())? z_V_fu_117_p2.read(): lhs_V_reg_57.read());
}

void secure_enclave_key_store_ghash_iteration::thread_r_V_1_fu_139_p4() {
    r_V_1_fu_139_p4 = rhs_V_reg_68.read().range(127, 1);
}

void secure_enclave_key_store_ghash_iteration::thread_r_V_2_fu_149_p1() {
    r_V_2_fu_149_p1 = esl_zext<128,127>(r_V_1_fu_139_p4.read());
}

void secure_enclave_key_store_ghash_iteration::thread_r_V_3_fu_88_p2() {
    r_V_3_fu_88_p2 = (d_V.read() ^ x_prev_V.read());
}

void secure_enclave_key_store_ghash_iteration::thread_tmp_fu_110_p3() {
    tmp_fu_110_p3 = (!i_assign_cast1_fu_94_p1.read().is_01() || sc_biguint<32>(i_assign_cast1_fu_94_p1.read()).to_uint() >= 128)? sc_lv<1>(): h_V_read_reg_153.read().range(sc_biguint<32>(i_assign_cast1_fu_94_p1.read()).to_uint(), sc_biguint<32>(i_assign_cast1_fu_94_p1.read()).to_uint());
}

void secure_enclave_key_store_ghash_iteration::thread_z_V_fu_117_p2() {
    z_V_fu_117_p2 = (lhs_V_reg_57.read() ^ rhs_V_reg_68.read());
}

void secure_enclave_key_store_ghash_iteration::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(exitcond_i_fu_98_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

}
