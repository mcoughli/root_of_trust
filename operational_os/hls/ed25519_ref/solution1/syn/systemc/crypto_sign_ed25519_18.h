// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _crypto_sign_ed25519_18_HH_
#define _crypto_sign_ed25519_18_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "crypto_sign_mac_mpcA.h"
#include "crypto_sign_ed255sc4.h"

namespace ap_rtl {

struct crypto_sign_ed25519_18 : public sc_module {
    // Port declarations 22
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
    sc_out< sc_lv<5> > y_v_address0;
    sc_out< sc_logic > y_v_ce0;
    sc_in< sc_lv<32> > y_v_q0;


    // Module declarations
    crypto_sign_ed25519_18(sc_module_name name);
    SC_HAS_PROCESS(crypto_sign_ed25519_18);

    ~crypto_sign_ed25519_18();

    sc_trace_file* mVcdFile;

    crypto_sign_ed255sc4* t_U;
    crypto_sign_mac_mpcA<1,1,6,25,32,32>* crypto_sign_mac_mpcA_x_U63;
    sc_signal< sc_lv<15> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > i_37_fu_248_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > i_39_fu_265_p2;
    sc_signal< sc_lv<6> > i_39_reg_461;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > exitcond2_fu_259_p2;
    sc_signal< sc_lv<32> > x_v_load_reg_471;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<6> > j_1_fu_282_p2;
    sc_signal< sc_lv<6> > j_1_reg_479;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > exitcond1_fu_276_p2;
    sc_signal< sc_lv<6> > tmp_767_fu_293_p2;
    sc_signal< sc_lv<6> > tmp_767_reg_489;
    sc_signal< sc_lv<32> > tmp_766_fu_299_p2;
    sc_signal< sc_lv<32> > tmp_766_reg_494;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<6> > t_addr_11_reg_499;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > exitcond_fu_314_p2;
    sc_signal< sc_lv<64> > tmp_762_fu_331_p1;
    sc_signal< sc_lv<64> > tmp_762_reg_517;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > t_q0;
    sc_signal< sc_lv<32> > t_load_2_reg_527;
    sc_signal< sc_lv<6> > i_41_fu_336_p2;
    sc_signal< sc_lv<6> > i_41_reg_532;
    sc_signal< sc_lv<5> > r_v_addr_reg_537;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<2> > rep_fu_360_p2;
    sc_signal< sc_lv<2> > rep_reg_552;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<5> > i_42_fu_395_p2;
    sc_signal< sc_lv<5> > i_42_reg_560;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<5> > r_v_addr_11_reg_565;
    sc_signal< sc_lv<1> > exitcond_i_fu_389_p2;
    sc_signal< sc_lv<5> > r_v_addr_12_reg_571;
    sc_signal< sc_lv<6> > t_address0;
    sc_signal< sc_logic > t_ce0;
    sc_signal< sc_logic > t_we0;
    sc_signal< sc_lv<32> > t_d0;
    sc_signal< sc_lv<6> > i_reg_174;
    sc_signal< sc_lv<1> > exitcond3_fu_242_p2;
    sc_signal< sc_lv<6> > i_1_reg_185;
    sc_signal< sc_lv<6> > j_reg_197;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<6> > i_2_reg_208;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<2> > rep_i_reg_220;
    sc_signal< sc_lv<5> > i_i_reg_231;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<64> > tmp_fu_254_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_271_p1;
    sc_signal< sc_lv<64> > tmp_765_fu_288_p1;
    sc_signal< sc_lv<64> > tmp_768_fu_304_p1;
    sc_signal< sc_lv<64> > tmp_763_fu_320_p1;
    sc_signal< sc_lv<64> > tmp_755_i_fu_401_p1;
    sc_signal< sc_lv<64> > tmp_756_i_fu_406_p1;
    sc_signal< sc_lv<32> > tmp_769_fu_308_p2;
    sc_signal< sc_lv<32> > tmp_764_fu_347_p2;
    sc_signal< sc_lv<32> > tmp_i_cast_fu_384_p1;
    sc_signal< sc_lv<32> > grp_fu_441_p3;
    sc_signal< sc_lv<32> > tmp_757_i_fu_429_p2;
    sc_signal< sc_lv<32> > tmp_758_i_cast_fu_436_p1;
    sc_signal< sc_lv<32> > tmp_766_fu_299_p1;
    sc_signal< sc_lv<6> > tmp_761_fu_325_p2;
    sc_signal< sc_lv<32> > tmp2_i_fu_342_p2;
    sc_signal< sc_lv<25> > tmp_757_fu_370_p4;
    sc_signal< sc_lv<7> > tmp_770_fu_366_p1;
    sc_signal< sc_lv<24> > t_s_fu_415_p4;
    sc_signal< sc_lv<32> > t_6_fu_425_p1;
    sc_signal< sc_lv<8> > tmp_771_fu_411_p1;
    sc_signal< sc_lv<6> > grp_fu_441_p0;
    sc_signal< sc_lv<25> > grp_fu_441_p1;
    sc_signal< sc_lv<1> > exitcond1_i_fu_354_p2;
    sc_signal< sc_lv<15> > ap_NS_fsm;
    sc_signal< sc_lv<31> > grp_fu_441_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<15> ap_ST_fsm_state1;
    static const sc_lv<15> ap_ST_fsm_state2;
    static const sc_lv<15> ap_ST_fsm_state3;
    static const sc_lv<15> ap_ST_fsm_state4;
    static const sc_lv<15> ap_ST_fsm_state5;
    static const sc_lv<15> ap_ST_fsm_state6;
    static const sc_lv<15> ap_ST_fsm_state7;
    static const sc_lv<15> ap_ST_fsm_state8;
    static const sc_lv<15> ap_ST_fsm_state9;
    static const sc_lv<15> ap_ST_fsm_state10;
    static const sc_lv<15> ap_ST_fsm_state11;
    static const sc_lv<15> ap_ST_fsm_state12;
    static const sc_lv<15> ap_ST_fsm_state13;
    static const sc_lv<15> ap_ST_fsm_state14;
    static const sc_lv<15> ap_ST_fsm_state15;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<64> ap_const_lv64_1F;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<6> ap_const_lv6_3F;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<31> ap_const_lv31_13;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_exitcond1_fu_276_p2();
    void thread_exitcond1_i_fu_354_p2();
    void thread_exitcond2_fu_259_p2();
    void thread_exitcond3_fu_242_p2();
    void thread_exitcond_fu_314_p2();
    void thread_exitcond_i_fu_389_p2();
    void thread_grp_fu_441_p0();
    void thread_grp_fu_441_p1();
    void thread_grp_fu_441_p10();
    void thread_i_37_fu_248_p2();
    void thread_i_39_fu_265_p2();
    void thread_i_41_fu_336_p2();
    void thread_i_42_fu_395_p2();
    void thread_j_1_fu_282_p2();
    void thread_r_v_addr_reg_537();
    void thread_r_v_address0();
    void thread_r_v_address1();
    void thread_r_v_ce0();
    void thread_r_v_ce1();
    void thread_r_v_d0();
    void thread_r_v_d1();
    void thread_r_v_we0();
    void thread_r_v_we1();
    void thread_rep_fu_360_p2();
    void thread_t_6_fu_425_p1();
    void thread_t_address0();
    void thread_t_ce0();
    void thread_t_d0();
    void thread_t_s_fu_415_p4();
    void thread_t_we0();
    void thread_tmp2_i_fu_342_p2();
    void thread_tmp_755_i_fu_401_p1();
    void thread_tmp_756_i_fu_406_p1();
    void thread_tmp_757_fu_370_p4();
    void thread_tmp_757_i_fu_429_p2();
    void thread_tmp_758_i_cast_fu_436_p1();
    void thread_tmp_761_fu_325_p2();
    void thread_tmp_762_fu_331_p1();
    void thread_tmp_763_fu_320_p1();
    void thread_tmp_764_fu_347_p2();
    void thread_tmp_765_fu_288_p1();
    void thread_tmp_766_fu_299_p1();
    void thread_tmp_766_fu_299_p2();
    void thread_tmp_767_fu_293_p2();
    void thread_tmp_768_fu_304_p1();
    void thread_tmp_769_fu_308_p2();
    void thread_tmp_770_fu_366_p1();
    void thread_tmp_771_fu_411_p1();
    void thread_tmp_fu_254_p1();
    void thread_tmp_i_cast_fu_384_p1();
    void thread_tmp_s_fu_271_p1();
    void thread_x_v_address0();
    void thread_x_v_ce0();
    void thread_y_v_address0();
    void thread_y_v_ce0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
