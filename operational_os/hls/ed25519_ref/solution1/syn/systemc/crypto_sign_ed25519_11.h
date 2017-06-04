// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _crypto_sign_ed25519_11_HH_
#define _crypto_sign_ed25519_11_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "crypto_sign_mac_mpcA.h"

namespace ap_rtl {

struct crypto_sign_ed25519_11 : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > r_v_address0;
    sc_out< sc_logic > r_v_ce0;
    sc_out< sc_logic > r_v_we0;
    sc_out< sc_lv<32> > r_v_d0;
    sc_in< sc_lv<32> > r_v_q0;
    sc_out< sc_lv<5> > r_v_address1;
    sc_out< sc_logic > r_v_ce1;
    sc_out< sc_logic > r_v_we1;
    sc_out< sc_lv<32> > r_v_d1;
    sc_in< sc_lv<32> > r_v_q1;
    sc_out< sc_lv<5> > x_v_address0;
    sc_out< sc_logic > x_v_ce0;
    sc_in< sc_lv<32> > x_v_q0;


    // Module declarations
    crypto_sign_ed25519_11(sc_module_name name);
    SC_HAS_PROCESS(crypto_sign_ed25519_11);

    ~crypto_sign_ed25519_11();

    sc_trace_file* mVcdFile;

    crypto_sign_mac_mpcA<1,1,6,25,32,32>* crypto_sign_mac_mpcA_x_U79;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > i_61_fu_144_p2;
    sc_signal< sc_lv<6> > i_61_reg_261;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > tmp_fu_150_p1;
    sc_signal< sc_lv<64> > tmp_reg_266;
    sc_signal< sc_lv<1> > exitcond_fu_138_p2;
    sc_signal< sc_lv<3> > rep_fu_168_p2;
    sc_signal< sc_lv<3> > rep_reg_291;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<5> > i_62_fu_203_p2;
    sc_signal< sc_lv<5> > i_62_reg_299;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<5> > r_v_addr_15_reg_304;
    sc_signal< sc_lv<1> > exitcond_i_fu_197_p2;
    sc_signal< sc_lv<5> > r_v_addr_16_reg_310;
    sc_signal< sc_lv<6> > i_reg_105;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<3> > rep_i_reg_116;
    sc_signal< sc_lv<5> > i_i_reg_127;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<64> > tmp_759_i_fu_209_p1;
    sc_signal< sc_lv<64> > tmp_760_i_fu_214_p1;
    sc_signal< sc_lv<32> > tmp_799_fu_155_p2;
    sc_signal< sc_lv<32> > tmp_i_cast_fu_192_p1;
    sc_signal< sc_lv<32> > grp_fu_249_p3;
    sc_signal< sc_lv<32> > tmp_761_i_fu_237_p2;
    sc_signal< sc_lv<32> > tmp_762_i_cast_fu_244_p1;
    sc_signal< sc_lv<25> > tmp_780_fu_178_p4;
    sc_signal< sc_lv<7> > tmp_800_fu_174_p1;
    sc_signal< sc_lv<24> > t_s_fu_223_p4;
    sc_signal< sc_lv<32> > t_1_fu_233_p1;
    sc_signal< sc_lv<8> > tmp_801_fu_219_p1;
    sc_signal< sc_lv<6> > grp_fu_249_p0;
    sc_signal< sc_lv<25> > grp_fu_249_p1;
    sc_signal< sc_lv<1> > exitcond1_i_fu_162_p2;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    sc_signal< sc_lv<31> > grp_fu_249_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_state5;
    static const sc_lv<7> ap_ST_fsm_state6;
    static const sc_lv<7> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<64> ap_const_lv64_1F;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<31> ap_const_lv31_13;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_exitcond1_i_fu_162_p2();
    void thread_exitcond_fu_138_p2();
    void thread_exitcond_i_fu_197_p2();
    void thread_grp_fu_249_p0();
    void thread_grp_fu_249_p1();
    void thread_grp_fu_249_p10();
    void thread_i_61_fu_144_p2();
    void thread_i_62_fu_203_p2();
    void thread_r_v_address0();
    void thread_r_v_address1();
    void thread_r_v_ce0();
    void thread_r_v_ce1();
    void thread_r_v_d0();
    void thread_r_v_d1();
    void thread_r_v_we0();
    void thread_r_v_we1();
    void thread_rep_fu_168_p2();
    void thread_t_1_fu_233_p1();
    void thread_t_s_fu_223_p4();
    void thread_tmp_759_i_fu_209_p1();
    void thread_tmp_760_i_fu_214_p1();
    void thread_tmp_761_i_fu_237_p2();
    void thread_tmp_762_i_cast_fu_244_p1();
    void thread_tmp_780_fu_178_p4();
    void thread_tmp_799_fu_155_p2();
    void thread_tmp_800_fu_174_p1();
    void thread_tmp_801_fu_219_p1();
    void thread_tmp_fu_150_p1();
    void thread_tmp_i_cast_fu_192_p1();
    void thread_x_v_address0();
    void thread_x_v_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif