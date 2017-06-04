// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _fe_invert_HH_
#define _fe_invert_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "fe_mul.h"
#include "fe_sq.h"
#include "fe_mul_2.h"
#include "fe_mul_1.h"
#include "fe_sq_1.h"

namespace ap_rtl {

struct fe_invert : public sc_module {
    // Port declarations 26
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > z_0_read;
    sc_in< sc_lv<32> > z_1_read;
    sc_in< sc_lv<32> > z_2_read;
    sc_in< sc_lv<32> > z_3_read;
    sc_in< sc_lv<32> > z_4_read;
    sc_in< sc_lv<32> > z_5_read;
    sc_in< sc_lv<32> > z_6_read;
    sc_in< sc_lv<32> > z_7_read;
    sc_in< sc_lv<32> > z_8_read;
    sc_in< sc_lv<32> > z_9_read;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;
    sc_out< sc_lv<32> > ap_return_2;
    sc_out< sc_lv<32> > ap_return_3;
    sc_out< sc_lv<32> > ap_return_4;
    sc_out< sc_lv<32> > ap_return_5;
    sc_out< sc_lv<32> > ap_return_6;
    sc_out< sc_lv<32> > ap_return_7;
    sc_out< sc_lv<32> > ap_return_8;
    sc_out< sc_lv<32> > ap_return_9;


    // Module declarations
    fe_invert(sc_module_name name);
    SC_HAS_PROCESS(fe_invert);

    ~fe_invert();

    sc_trace_file* mVcdFile;

    fe_mul* grp_fe_mul_fu_2304;
    fe_sq* grp_fe_sq_fu_2305;
    fe_mul_2* grp_fe_mul_2_fu_2610;
    fe_mul_1* grp_fe_mul_1_fu_2684;
    fe_sq_1* grp_fe_sq_1_fu_2728;
    sc_signal< sc_lv<43> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > grp_fu_1036_p2;
    sc_signal< sc_lv<7> > reg_803;
    sc_signal< sc_logic > ap_CS_fsm_state37;
    sc_signal< sc_lv<1> > grp_fu_2593_p2;
    sc_signal< sc_logic > ap_CS_fsm_state41;
    sc_signal< sc_lv<7> > reg_914;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< sc_lv<32> > reg_3032;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_fe_sq_fu_2305_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_lv<32> > reg_3044;
    sc_signal< sc_lv<32> > reg_3056;
    sc_signal< sc_lv<32> > reg_3068;
    sc_signal< sc_lv<32> > reg_3080;
    sc_signal< sc_lv<32> > reg_3092;
    sc_signal< sc_lv<32> > reg_3104;
    sc_signal< sc_lv<32> > reg_3116;
    sc_signal< sc_lv<32> > reg_3128;
    sc_signal< sc_lv<32> > reg_3140;
    sc_signal< sc_lv<32> > reg_3152;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > grp_fe_sq_1_fu_2728_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_logic > ap_CS_fsm_state34;
    sc_signal< sc_logic > ap_CS_fsm_state36;
    sc_signal< sc_logic > ap_CS_fsm_state40;
    sc_signal< sc_lv<32> > reg_3165;
    sc_signal< sc_lv<32> > reg_3178;
    sc_signal< sc_lv<32> > reg_3191;
    sc_signal< sc_lv<32> > reg_3204;
    sc_signal< sc_lv<32> > reg_3217;
    sc_signal< sc_lv<32> > reg_3230;
    sc_signal< sc_lv<32> > reg_3243;
    sc_signal< sc_lv<32> > reg_3256;
    sc_signal< sc_lv<32> > reg_3269;
    sc_signal< sc_lv<32> > reg_3282;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > grp_fe_mul_2_fu_2610_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_logic > ap_CS_fsm_state39;
    sc_signal< sc_lv<32> > reg_3291;
    sc_signal< sc_lv<32> > reg_3300;
    sc_signal< sc_lv<32> > reg_3309;
    sc_signal< sc_lv<32> > reg_3318;
    sc_signal< sc_lv<32> > reg_3327;
    sc_signal< sc_lv<32> > reg_3336;
    sc_signal< sc_lv<32> > reg_3345;
    sc_signal< sc_lv<32> > reg_3354;
    sc_signal< sc_lv<32> > reg_3363;
    sc_signal< sc_lv<32> > reg_3372;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > grp_fe_mul_1_fu_2684_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_lv<32> > reg_3378;
    sc_signal< sc_lv<32> > reg_3384;
    sc_signal< sc_lv<32> > reg_3390;
    sc_signal< sc_lv<32> > reg_3396;
    sc_signal< sc_lv<32> > reg_3402;
    sc_signal< sc_lv<32> > reg_3408;
    sc_signal< sc_lv<32> > reg_3414;
    sc_signal< sc_lv<32> > reg_3420;
    sc_signal< sc_lv<32> > reg_3426;
    sc_signal< sc_lv<32> > reg_3432;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state35;
    sc_signal< sc_lv<32> > reg_3437;
    sc_signal< sc_lv<32> > reg_3442;
    sc_signal< sc_lv<32> > reg_3447;
    sc_signal< sc_lv<32> > reg_3452;
    sc_signal< sc_lv<32> > reg_3457;
    sc_signal< sc_lv<32> > reg_3462;
    sc_signal< sc_lv<32> > reg_3467;
    sc_signal< sc_lv<32> > reg_3472;
    sc_signal< sc_lv<32> > reg_3477;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_logic > ap_CS_fsm_state38;
    sc_signal< sc_logic > ap_CS_fsm_state42;
    sc_signal< sc_lv<32> > t1_0_reg_3612;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > t1_1_reg_3617;
    sc_signal< sc_lv<32> > t1_2_reg_3622;
    sc_signal< sc_lv<32> > t1_3_reg_3627;
    sc_signal< sc_lv<32> > t1_4_reg_3632;
    sc_signal< sc_lv<32> > t1_5_reg_3637;
    sc_signal< sc_lv<32> > t1_6_reg_3642;
    sc_signal< sc_lv<32> > t1_7_reg_3647;
    sc_signal< sc_lv<32> > t1_8_reg_3652;
    sc_signal< sc_lv<32> > t1_9_reg_3657;
    sc_signal< sc_lv<32> > t0_0_1_reg_3662;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > t0_1_1_reg_3668;
    sc_signal< sc_lv<32> > t0_2_1_reg_3674;
    sc_signal< sc_lv<32> > t0_3_1_reg_3680;
    sc_signal< sc_lv<32> > t0_4_1_reg_3686;
    sc_signal< sc_lv<32> > t0_5_1_reg_3692;
    sc_signal< sc_lv<32> > t0_6_1_reg_3698;
    sc_signal< sc_lv<32> > t0_7_1_reg_3704;
    sc_signal< sc_lv<32> > t0_8_1_reg_3710;
    sc_signal< sc_lv<32> > t0_9_1_reg_3716;
    sc_signal< sc_logic > grp_fe_mul_fu_2304_ap_start;
    sc_signal< sc_logic > grp_fe_mul_fu_2304_ap_done;
    sc_signal< sc_logic > grp_fe_mul_fu_2304_ap_idle;
    sc_signal< sc_logic > grp_fe_mul_fu_2304_ap_ready;
    sc_signal< sc_lv<32> > grp_fe_mul_fu_2304_ap_return_0;
    sc_signal< sc_lv<32> > grp_fe_mul_fu_2304_ap_return_1;
    sc_signal< sc_lv<32> > grp_fe_mul_fu_2304_ap_return_2;
    sc_signal< sc_lv<32> > grp_fe_mul_fu_2304_ap_return_3;
    sc_signal< sc_lv<32> > grp_fe_mul_fu_2304_ap_return_4;
    sc_signal< sc_lv<32> > grp_fe_mul_fu_2304_ap_return_5;
    sc_signal< sc_lv<32> > grp_fe_mul_fu_2304_ap_return_6;
    sc_signal< sc_lv<32> > grp_fe_mul_fu_2304_ap_return_7;
    sc_signal< sc_lv<32> > grp_fe_mul_fu_2304_ap_return_8;
    sc_signal< sc_lv<32> > grp_fe_mul_fu_2304_ap_return_9;
    sc_signal< sc_logic > grp_fe_sq_fu_2305_ap_start;
    sc_signal< sc_logic > grp_fe_sq_fu_2305_ap_idle;
    sc_signal< sc_logic > grp_fe_sq_fu_2305_ap_ready;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_f_0_read;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_f_1_read;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_f_2_read;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_f_3_read;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_f_4_read;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_f_5_read;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_f_6_read;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_f_7_read;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_f_8_read;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_f_9_read;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_ap_return_0;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_ap_return_1;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_ap_return_2;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_ap_return_3;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_ap_return_4;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_ap_return_5;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_ap_return_6;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_ap_return_7;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_ap_return_8;
    sc_signal< sc_lv<32> > grp_fe_sq_fu_2305_ap_return_9;
    sc_signal< sc_logic > grp_fe_mul_2_fu_2610_ap_start;
    sc_signal< sc_logic > grp_fe_mul_2_fu_2610_ap_idle;
    sc_signal< sc_logic > grp_fe_mul_2_fu_2610_ap_ready;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_g_0_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_g_1_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_g_2_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_g_3_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_g_4_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_g_5_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_g_6_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_g_7_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_g_8_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_g_9_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_f_0_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_f_1_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_f_2_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_f_3_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_f_4_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_f_5_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_f_6_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_f_7_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_f_8_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_f_9_read;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_ap_return_0;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_ap_return_1;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_ap_return_2;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_ap_return_3;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_ap_return_4;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_ap_return_5;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_ap_return_6;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_ap_return_7;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_ap_return_8;
    sc_signal< sc_lv<32> > grp_fe_mul_2_fu_2610_ap_return_9;
    sc_signal< sc_logic > grp_fe_mul_1_fu_2684_ap_start;
    sc_signal< sc_logic > grp_fe_mul_1_fu_2684_ap_idle;
    sc_signal< sc_logic > grp_fe_mul_1_fu_2684_ap_ready;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_f_0_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_f_1_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_f_2_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_f_3_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_f_4_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_f_5_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_f_6_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_f_7_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_f_8_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_f_9_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_g_0_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_g_1_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_g_2_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_g_3_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_g_4_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_g_5_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_g_6_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_g_7_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_g_8_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_g_9_read;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_ap_return_0;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_ap_return_1;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_ap_return_2;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_ap_return_3;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_ap_return_4;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_ap_return_5;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_ap_return_6;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_ap_return_7;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_ap_return_8;
    sc_signal< sc_lv<32> > grp_fe_mul_1_fu_2684_ap_return_9;
    sc_signal< sc_logic > grp_fe_sq_1_fu_2728_ap_start;
    sc_signal< sc_logic > grp_fe_sq_1_fu_2728_ap_idle;
    sc_signal< sc_logic > grp_fe_sq_1_fu_2728_ap_ready;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_f_0_read;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_f_1_read;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_f_2_read;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_f_3_read;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_f_4_read;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_f_5_read;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_f_6_read;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_f_7_read;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_f_8_read;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_f_9_read;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_ap_return_0;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_ap_return_1;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_ap_return_2;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_ap_return_3;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_ap_return_4;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_ap_return_5;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_ap_return_6;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_ap_return_7;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_ap_return_8;
    sc_signal< sc_lv<32> > grp_fe_sq_1_fu_2728_ap_return_9;
    sc_signal< sc_lv<32> > t2_reg_148;
    sc_signal< sc_lv<32> > t2_1_120_reg_158;
    sc_signal< sc_lv<32> > t2_2_121_reg_168;
    sc_signal< sc_lv<32> > t2_3_122_reg_178;
    sc_signal< sc_lv<32> > t2_4_123_reg_188;
    sc_signal< sc_lv<32> > t2_5_124_reg_198;
    sc_signal< sc_lv<32> > t2_6_125_reg_208;
    sc_signal< sc_lv<32> > t2_7_126_reg_218;
    sc_signal< sc_lv<32> > t2_8_127_reg_228;
    sc_signal< sc_lv<32> > t2_9_128_reg_238;
    sc_signal< sc_lv<3> > i_3_reg_248;
    sc_signal< sc_lv<32> > t2_0_1_129_reg_259;
    sc_signal< sc_lv<32> > t2_1_1_130_reg_269;
    sc_signal< sc_lv<32> > t2_2_1_131_reg_279;
    sc_signal< sc_lv<32> > t2_3_1_132_reg_289;
    sc_signal< sc_lv<32> > t2_4_1_133_reg_299;
    sc_signal< sc_lv<32> > t2_5_1_134_reg_309;
    sc_signal< sc_lv<32> > t2_6_1_135_reg_319;
    sc_signal< sc_lv<32> > t2_7_1_136_reg_329;
    sc_signal< sc_lv<32> > t2_8_1_137_reg_339;
    sc_signal< sc_lv<32> > t2_9_1_138_reg_349;
    sc_signal< sc_lv<4> > i_4_reg_359;
    sc_signal< sc_lv<32> > t3_reg_370;
    sc_signal< sc_lv<32> > t3_1_140_reg_380;
    sc_signal< sc_lv<32> > t3_2_141_reg_390;
    sc_signal< sc_lv<32> > t3_3_142_reg_400;
    sc_signal< sc_lv<32> > t3_4_143_reg_410;
    sc_signal< sc_lv<32> > t3_5_144_reg_420;
    sc_signal< sc_lv<32> > t3_6_145_reg_430;
    sc_signal< sc_lv<32> > t3_7_146_reg_440;
    sc_signal< sc_lv<32> > t3_8_147_reg_450;
    sc_signal< sc_lv<32> > t3_9_148_reg_460;
    sc_signal< sc_lv<5> > i_5_reg_470;
    sc_signal< sc_lv<32> > t2_0_2_150_reg_481;
    sc_signal< sc_lv<32> > t2_1_2_151_reg_491;
    sc_signal< sc_lv<32> > t2_2_2_152_reg_501;
    sc_signal< sc_lv<32> > t2_3_2_153_reg_511;
    sc_signal< sc_lv<32> > t2_4_2_154_reg_521;
    sc_signal< sc_lv<32> > t2_5_2_155_reg_531;
    sc_signal< sc_lv<32> > t2_6_2_156_reg_541;
    sc_signal< sc_lv<32> > t2_7_2_157_reg_551;
    sc_signal< sc_lv<32> > t2_8_2_158_reg_561;
    sc_signal< sc_lv<32> > t2_9_2_159_reg_571;
    sc_signal< sc_lv<4> > i_6_reg_581;
    sc_signal< sc_lv<32> > t2_0_3_161_reg_592;
    sc_signal< sc_lv<32> > t2_1_3_162_reg_602;
    sc_signal< sc_lv<32> > t2_2_3_163_reg_612;
    sc_signal< sc_lv<32> > t2_3_3_164_reg_622;
    sc_signal< sc_lv<32> > t2_4_3_165_reg_632;
    sc_signal< sc_lv<32> > t2_5_3_166_reg_642;
    sc_signal< sc_lv<32> > t2_6_3_167_reg_652;
    sc_signal< sc_lv<32> > t2_7_3_168_reg_662;
    sc_signal< sc_lv<32> > t2_8_3_169_reg_672;
    sc_signal< sc_lv<32> > t2_9_3_170_reg_682;
    sc_signal< sc_lv<6> > i_7_reg_692;
    sc_signal< sc_lv<32> > t3_0_1_172_reg_703;
    sc_signal< sc_lv<32> > t3_1_1_173_reg_713;
    sc_signal< sc_lv<32> > t3_2_1_174_reg_723;
    sc_signal< sc_lv<32> > t3_3_1_175_reg_733;
    sc_signal< sc_lv<32> > t3_4_1_176_reg_743;
    sc_signal< sc_lv<32> > t3_5_1_177_reg_753;
    sc_signal< sc_lv<32> > t3_6_1_178_reg_763;
    sc_signal< sc_lv<32> > t3_7_1_179_reg_773;
    sc_signal< sc_lv<32> > t3_8_1_180_reg_783;
    sc_signal< sc_lv<32> > t3_9_1_181_reg_793;
    sc_signal< sc_lv<32> > t2_0_4_183_reg_814;
    sc_signal< sc_lv<32> > t2_1_4_184_reg_824;
    sc_signal< sc_lv<32> > t2_2_4_185_reg_834;
    sc_signal< sc_lv<32> > t2_3_4_186_reg_844;
    sc_signal< sc_lv<32> > t2_4_4_187_reg_854;
    sc_signal< sc_lv<32> > t2_5_4_188_reg_864;
    sc_signal< sc_lv<32> > t2_6_4_189_reg_874;
    sc_signal< sc_lv<32> > t2_7_4_190_reg_884;
    sc_signal< sc_lv<32> > t2_8_4_191_reg_894;
    sc_signal< sc_lv<32> > t2_9_4_192_reg_904;
    sc_signal< sc_lv<32> > t1_reg_925;
    sc_signal< sc_lv<32> > t1_1_194_reg_935;
    sc_signal< sc_lv<32> > t1_2_195_reg_945;
    sc_signal< sc_lv<32> > t1_3_196_reg_955;
    sc_signal< sc_lv<32> > t1_4_197_reg_965;
    sc_signal< sc_lv<32> > t1_5_198_reg_975;
    sc_signal< sc_lv<32> > t1_6_199_reg_985;
    sc_signal< sc_lv<32> > t1_7_200_reg_995;
    sc_signal< sc_lv<32> > t1_8_201_reg_1005;
    sc_signal< sc_lv<32> > t1_9_202_reg_1015;
    sc_signal< sc_lv<3> > i_s_reg_1025;
    sc_signal< sc_logic > ap_reg_grp_fe_mul_fu_2304_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state43;
    sc_signal< sc_logic > ap_reg_grp_fe_sq_fu_2305_ap_start;
    sc_signal< sc_logic > ap_reg_grp_fe_mul_2_fu_2610_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_reg_grp_fe_mul_1_fu_2684_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_reg_grp_fe_sq_1_fu_2728_ap_start;
    sc_signal< sc_lv<7> > grp_fu_1036_p0;
    sc_signal< sc_lv<7> > grp_fu_1036_p1;
    sc_signal< sc_lv<7> > grp_fu_2593_p0;
    sc_signal< sc_lv<7> > grp_fu_2593_p1;
    sc_signal< sc_lv<32> > ap_return_0_preg;
    sc_signal< sc_lv<32> > ap_return_1_preg;
    sc_signal< sc_lv<32> > ap_return_2_preg;
    sc_signal< sc_lv<32> > ap_return_3_preg;
    sc_signal< sc_lv<32> > ap_return_4_preg;
    sc_signal< sc_lv<32> > ap_return_5_preg;
    sc_signal< sc_lv<32> > ap_return_6_preg;
    sc_signal< sc_lv<32> > ap_return_7_preg;
    sc_signal< sc_lv<32> > ap_return_8_preg;
    sc_signal< sc_lv<32> > ap_return_9_preg;
    sc_signal< sc_lv<43> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<43> ap_ST_fsm_state1;
    static const sc_lv<43> ap_ST_fsm_state2;
    static const sc_lv<43> ap_ST_fsm_state3;
    static const sc_lv<43> ap_ST_fsm_state4;
    static const sc_lv<43> ap_ST_fsm_state5;
    static const sc_lv<43> ap_ST_fsm_state6;
    static const sc_lv<43> ap_ST_fsm_state7;
    static const sc_lv<43> ap_ST_fsm_state8;
    static const sc_lv<43> ap_ST_fsm_state9;
    static const sc_lv<43> ap_ST_fsm_state10;
    static const sc_lv<43> ap_ST_fsm_state11;
    static const sc_lv<43> ap_ST_fsm_state12;
    static const sc_lv<43> ap_ST_fsm_state13;
    static const sc_lv<43> ap_ST_fsm_state14;
    static const sc_lv<43> ap_ST_fsm_state15;
    static const sc_lv<43> ap_ST_fsm_state16;
    static const sc_lv<43> ap_ST_fsm_state17;
    static const sc_lv<43> ap_ST_fsm_state18;
    static const sc_lv<43> ap_ST_fsm_state19;
    static const sc_lv<43> ap_ST_fsm_state20;
    static const sc_lv<43> ap_ST_fsm_state21;
    static const sc_lv<43> ap_ST_fsm_state22;
    static const sc_lv<43> ap_ST_fsm_state23;
    static const sc_lv<43> ap_ST_fsm_state24;
    static const sc_lv<43> ap_ST_fsm_state25;
    static const sc_lv<43> ap_ST_fsm_state26;
    static const sc_lv<43> ap_ST_fsm_state27;
    static const sc_lv<43> ap_ST_fsm_state28;
    static const sc_lv<43> ap_ST_fsm_state29;
    static const sc_lv<43> ap_ST_fsm_state30;
    static const sc_lv<43> ap_ST_fsm_state31;
    static const sc_lv<43> ap_ST_fsm_state32;
    static const sc_lv<43> ap_ST_fsm_state33;
    static const sc_lv<43> ap_ST_fsm_state34;
    static const sc_lv<43> ap_ST_fsm_state35;
    static const sc_lv<43> ap_ST_fsm_state36;
    static const sc_lv<43> ap_ST_fsm_state37;
    static const sc_lv<43> ap_ST_fsm_state38;
    static const sc_lv<43> ap_ST_fsm_state39;
    static const sc_lv<43> ap_ST_fsm_state40;
    static const sc_lv<43> ap_ST_fsm_state41;
    static const sc_lv<43> ap_ST_fsm_state42;
    static const sc_lv<43> ap_ST_fsm_state43;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<5> ap_const_lv5_14;
    static const sc_lv<6> ap_const_lv6_32;
    static const sc_lv<7> ap_const_lv7_64;
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
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state33();
    void thread_ap_CS_fsm_state34();
    void thread_ap_CS_fsm_state35();
    void thread_ap_CS_fsm_state36();
    void thread_ap_CS_fsm_state37();
    void thread_ap_CS_fsm_state38();
    void thread_ap_CS_fsm_state39();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state40();
    void thread_ap_CS_fsm_state41();
    void thread_ap_CS_fsm_state42();
    void thread_ap_CS_fsm_state43();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_ap_return_4();
    void thread_ap_return_5();
    void thread_ap_return_6();
    void thread_ap_return_7();
    void thread_ap_return_8();
    void thread_ap_return_9();
    void thread_grp_fe_mul_1_fu_2684_ap_start();
    void thread_grp_fe_mul_1_fu_2684_f_0_read();
    void thread_grp_fe_mul_1_fu_2684_f_1_read();
    void thread_grp_fe_mul_1_fu_2684_f_2_read();
    void thread_grp_fe_mul_1_fu_2684_f_3_read();
    void thread_grp_fe_mul_1_fu_2684_f_4_read();
    void thread_grp_fe_mul_1_fu_2684_f_5_read();
    void thread_grp_fe_mul_1_fu_2684_f_6_read();
    void thread_grp_fe_mul_1_fu_2684_f_7_read();
    void thread_grp_fe_mul_1_fu_2684_f_8_read();
    void thread_grp_fe_mul_1_fu_2684_f_9_read();
    void thread_grp_fe_mul_1_fu_2684_g_0_read();
    void thread_grp_fe_mul_1_fu_2684_g_1_read();
    void thread_grp_fe_mul_1_fu_2684_g_2_read();
    void thread_grp_fe_mul_1_fu_2684_g_3_read();
    void thread_grp_fe_mul_1_fu_2684_g_4_read();
    void thread_grp_fe_mul_1_fu_2684_g_5_read();
    void thread_grp_fe_mul_1_fu_2684_g_6_read();
    void thread_grp_fe_mul_1_fu_2684_g_7_read();
    void thread_grp_fe_mul_1_fu_2684_g_8_read();
    void thread_grp_fe_mul_1_fu_2684_g_9_read();
    void thread_grp_fe_mul_2_fu_2610_ap_start();
    void thread_grp_fe_mul_2_fu_2610_f_0_read();
    void thread_grp_fe_mul_2_fu_2610_f_1_read();
    void thread_grp_fe_mul_2_fu_2610_f_2_read();
    void thread_grp_fe_mul_2_fu_2610_f_3_read();
    void thread_grp_fe_mul_2_fu_2610_f_4_read();
    void thread_grp_fe_mul_2_fu_2610_f_5_read();
    void thread_grp_fe_mul_2_fu_2610_f_6_read();
    void thread_grp_fe_mul_2_fu_2610_f_7_read();
    void thread_grp_fe_mul_2_fu_2610_f_8_read();
    void thread_grp_fe_mul_2_fu_2610_f_9_read();
    void thread_grp_fe_mul_2_fu_2610_g_0_read();
    void thread_grp_fe_mul_2_fu_2610_g_1_read();
    void thread_grp_fe_mul_2_fu_2610_g_2_read();
    void thread_grp_fe_mul_2_fu_2610_g_3_read();
    void thread_grp_fe_mul_2_fu_2610_g_4_read();
    void thread_grp_fe_mul_2_fu_2610_g_5_read();
    void thread_grp_fe_mul_2_fu_2610_g_6_read();
    void thread_grp_fe_mul_2_fu_2610_g_7_read();
    void thread_grp_fe_mul_2_fu_2610_g_8_read();
    void thread_grp_fe_mul_2_fu_2610_g_9_read();
    void thread_grp_fe_mul_fu_2304_ap_start();
    void thread_grp_fe_sq_1_fu_2728_ap_start();
    void thread_grp_fe_sq_1_fu_2728_f_0_read();
    void thread_grp_fe_sq_1_fu_2728_f_1_read();
    void thread_grp_fe_sq_1_fu_2728_f_2_read();
    void thread_grp_fe_sq_1_fu_2728_f_3_read();
    void thread_grp_fe_sq_1_fu_2728_f_4_read();
    void thread_grp_fe_sq_1_fu_2728_f_5_read();
    void thread_grp_fe_sq_1_fu_2728_f_6_read();
    void thread_grp_fe_sq_1_fu_2728_f_7_read();
    void thread_grp_fe_sq_1_fu_2728_f_8_read();
    void thread_grp_fe_sq_1_fu_2728_f_9_read();
    void thread_grp_fe_sq_fu_2305_ap_start();
    void thread_grp_fe_sq_fu_2305_f_0_read();
    void thread_grp_fe_sq_fu_2305_f_1_read();
    void thread_grp_fe_sq_fu_2305_f_2_read();
    void thread_grp_fe_sq_fu_2305_f_3_read();
    void thread_grp_fe_sq_fu_2305_f_4_read();
    void thread_grp_fe_sq_fu_2305_f_5_read();
    void thread_grp_fe_sq_fu_2305_f_6_read();
    void thread_grp_fe_sq_fu_2305_f_7_read();
    void thread_grp_fe_sq_fu_2305_f_8_read();
    void thread_grp_fe_sq_fu_2305_f_9_read();
    void thread_grp_fu_1036_p0();
    void thread_grp_fu_1036_p1();
    void thread_grp_fu_1036_p2();
    void thread_grp_fu_2593_p0();
    void thread_grp_fu_2593_p1();
    void thread_grp_fu_2593_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif