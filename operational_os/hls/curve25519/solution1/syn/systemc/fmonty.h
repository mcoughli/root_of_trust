// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _fmonty_HH_
#define _fmonty_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "fsquare.h"
#include "fproduct.h"
#include "fproduct_1.h"
#include "freduce_degree.h"
#include "freduce_coefficients.h"
#include "fsum.h"
#include "fdifference_1.h"
#include "p_memcpy.h"
#include "fmonty_origx.h"
#include "fsquare_t.h"
#include "fmonty_xx.h"
#include "fmonty_zz.h"

namespace ap_rtl {

struct fmonty : public sc_module {
    // Port declarations 73
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > x2_address0;
    sc_out< sc_logic > x2_ce0;
    sc_out< sc_logic > x2_we0;
    sc_out< sc_lv<64> > x2_d0;
    sc_in< sc_lv<64> > x2_q0;
    sc_out< sc_lv<5> > x2_address1;
    sc_out< sc_logic > x2_ce1;
    sc_out< sc_logic > x2_we1;
    sc_out< sc_lv<64> > x2_d1;
    sc_in< sc_lv<64> > x2_q1;
    sc_out< sc_lv<5> > z2_address0;
    sc_out< sc_logic > z2_ce0;
    sc_out< sc_logic > z2_we0;
    sc_out< sc_lv<64> > z2_d0;
    sc_in< sc_lv<64> > z2_q0;
    sc_out< sc_lv<5> > z2_address1;
    sc_out< sc_logic > z2_ce1;
    sc_out< sc_logic > z2_we1;
    sc_out< sc_lv<64> > z2_d1;
    sc_in< sc_lv<64> > z2_q1;
    sc_out< sc_lv<5> > x3_address0;
    sc_out< sc_logic > x3_ce0;
    sc_out< sc_logic > x3_we0;
    sc_out< sc_lv<64> > x3_d0;
    sc_out< sc_lv<5> > z3_address0;
    sc_out< sc_logic > z3_ce0;
    sc_out< sc_logic > z3_we0;
    sc_out< sc_lv<64> > z3_d0;
    sc_out< sc_lv<5> > x_address0;
    sc_out< sc_logic > x_ce0;
    sc_out< sc_logic > x_we0;
    sc_out< sc_lv<64> > x_d0;
    sc_in< sc_lv<64> > x_q0;
    sc_out< sc_lv<5> > x_address1;
    sc_out< sc_logic > x_ce1;
    sc_out< sc_logic > x_we1;
    sc_out< sc_lv<64> > x_d1;
    sc_in< sc_lv<64> > x_q1;
    sc_out< sc_lv<5> > z_address0;
    sc_out< sc_logic > z_ce0;
    sc_out< sc_logic > z_we0;
    sc_out< sc_lv<64> > z_d0;
    sc_in< sc_lv<64> > z_q0;
    sc_out< sc_lv<5> > z_address1;
    sc_out< sc_logic > z_ce1;
    sc_in< sc_lv<64> > z_q1;
    sc_out< sc_lv<5> > xprime_address0;
    sc_out< sc_logic > xprime_ce0;
    sc_out< sc_logic > xprime_we0;
    sc_out< sc_lv<64> > xprime_d0;
    sc_in< sc_lv<64> > xprime_q0;
    sc_out< sc_lv<5> > xprime_address1;
    sc_out< sc_logic > xprime_ce1;
    sc_out< sc_logic > xprime_we1;
    sc_out< sc_lv<64> > xprime_d1;
    sc_in< sc_lv<64> > xprime_q1;
    sc_out< sc_lv<5> > zprime_address0;
    sc_out< sc_logic > zprime_ce0;
    sc_out< sc_logic > zprime_we0;
    sc_out< sc_lv<64> > zprime_d0;
    sc_in< sc_lv<64> > zprime_q0;
    sc_out< sc_lv<5> > zprime_address1;
    sc_out< sc_logic > zprime_ce1;
    sc_in< sc_lv<64> > zprime_q1;
    sc_out< sc_lv<4> > qmqp_address0;
    sc_out< sc_logic > qmqp_ce0;
    sc_in< sc_lv<26> > qmqp_q0;


    // Module declarations
    fmonty(sc_module_name name);
    SC_HAS_PROCESS(fmonty);

    ~fmonty();

    sc_trace_file* mVcdFile;

    fmonty_origx* origx_U;
    fmonty_origx* origxprime_U;
    fsquare_t* zzz_U;
    fmonty_xx* xx_U;
    fmonty_zz* zz_U;
    fsquare_t* xxprime_U;
    fsquare_t* zzprime_U;
    fmonty_zz* zzzprime_U;
    fmonty_zz* xxxprime_U;
    fsquare* grp_fsquare_fu_331;
    fsquare* grp_fsquare_fu_338;
    fproduct* grp_fproduct_fu_345;
    fproduct_1* grp_fproduct_1_fu_358;
    freduce_degree* grp_freduce_degree_fu_366;
    freduce_coefficients* grp_freduce_coefficients_fu_373;
    fsum* grp_fsum_fu_380;
    fdifference_1* grp_fdifference_1_fu_390;
    p_memcpy* grp_p_memcpy_fu_398;
    sc_signal< sc_lv<53> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > grp_fu_254_p2;
    sc_signal< sc_lv<4> > reg_198;
    sc_signal< sc_logic > ap_CS_fsm_state40;
    sc_signal< sc_lv<4> > reg_220;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_logic > ap_CS_fsm_state42;
    sc_signal< sc_lv<4> > reg_231;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_logic > ap_CS_fsm_state38;
    sc_signal< sc_lv<64> > tmp_i_fu_413_p1;
    sc_signal< sc_lv<64> > tmp_i_reg_478;
    sc_signal< sc_lv<1> > exitcond_i_fu_407_p2;
    sc_signal< sc_lv<64> > tmp_i2_fu_424_p1;
    sc_signal< sc_lv<64> > tmp_i2_reg_491;
    sc_signal< sc_lv<1> > exitcond_i1_fu_418_p2;
    sc_signal< sc_lv<1> > tmp_i3_fu_429_p2;
    sc_signal< sc_lv<5> > zz_addr_reg_509;
    sc_signal< sc_lv<64> > tmp_i3_26_fu_470_p1;
    sc_signal< sc_lv<64> > tmp_i3_26_reg_520;
    sc_signal< sc_lv<1> > tmp_i5_fu_464_p2;
    sc_signal< sc_lv<64> > zz_q0;
    sc_signal< sc_lv<64> > zz_load_1_reg_530;
    sc_signal< sc_logic > ap_CS_fsm_state43;
    sc_signal< sc_lv<4> > origx_address0;
    sc_signal< sc_logic > origx_ce0;
    sc_signal< sc_logic > origx_we0;
    sc_signal< sc_lv<64> > origx_q0;
    sc_signal< sc_lv<4> > origxprime_address0;
    sc_signal< sc_logic > origxprime_ce0;
    sc_signal< sc_logic > origxprime_we0;
    sc_signal< sc_lv<64> > origxprime_q0;
    sc_signal< sc_lv<5> > zzz_address0;
    sc_signal< sc_logic > zzz_ce0;
    sc_signal< sc_logic > zzz_we0;
    sc_signal< sc_lv<64> > zzz_d0;
    sc_signal< sc_lv<64> > zzz_q0;
    sc_signal< sc_lv<5> > zzz_address1;
    sc_signal< sc_logic > zzz_ce1;
    sc_signal< sc_logic > zzz_we1;
    sc_signal< sc_lv<64> > zzz_d1;
    sc_signal< sc_lv<64> > zzz_q1;
    sc_signal< sc_lv<5> > xx_address0;
    sc_signal< sc_logic > xx_ce0;
    sc_signal< sc_logic > xx_we0;
    sc_signal< sc_lv<64> > xx_q0;
    sc_signal< sc_logic > xx_ce1;
    sc_signal< sc_lv<64> > xx_q1;
    sc_signal< sc_lv<5> > zz_address0;
    sc_signal< sc_logic > zz_ce0;
    sc_signal< sc_logic > zz_we0;
    sc_signal< sc_lv<64> > zz_d0;
    sc_signal< sc_lv<5> > xxprime_address0;
    sc_signal< sc_logic > xxprime_ce0;
    sc_signal< sc_logic > xxprime_we0;
    sc_signal< sc_lv<64> > xxprime_d0;
    sc_signal< sc_lv<64> > xxprime_q0;
    sc_signal< sc_lv<5> > xxprime_address1;
    sc_signal< sc_logic > xxprime_ce1;
    sc_signal< sc_logic > xxprime_we1;
    sc_signal< sc_lv<64> > xxprime_d1;
    sc_signal< sc_lv<64> > xxprime_q1;
    sc_signal< sc_lv<5> > zzprime_address0;
    sc_signal< sc_logic > zzprime_ce0;
    sc_signal< sc_logic > zzprime_we0;
    sc_signal< sc_lv<64> > zzprime_d0;
    sc_signal< sc_lv<64> > zzprime_q0;
    sc_signal< sc_lv<5> > zzprime_address1;
    sc_signal< sc_logic > zzprime_ce1;
    sc_signal< sc_logic > zzprime_we1;
    sc_signal< sc_lv<64> > zzprime_d1;
    sc_signal< sc_lv<64> > zzprime_q1;
    sc_signal< sc_lv<5> > zzzprime_address0;
    sc_signal< sc_logic > zzzprime_ce0;
    sc_signal< sc_logic > zzzprime_we0;
    sc_signal< sc_lv<64> > zzzprime_q0;
    sc_signal< sc_lv<5> > xxxprime_address0;
    sc_signal< sc_logic > xxxprime_ce0;
    sc_signal< sc_logic > xxxprime_we0;
    sc_signal< sc_lv<64> > xxxprime_q0;
    sc_signal< sc_logic > grp_fsquare_fu_331_ap_start;
    sc_signal< sc_logic > grp_fsquare_fu_331_ap_done;
    sc_signal< sc_logic > grp_fsquare_fu_331_ap_idle;
    sc_signal< sc_logic > grp_fsquare_fu_331_ap_ready;
    sc_signal< sc_lv<5> > grp_fsquare_fu_331_output_r_address0;
    sc_signal< sc_logic > grp_fsquare_fu_331_output_r_ce0;
    sc_signal< sc_logic > grp_fsquare_fu_331_output_r_we0;
    sc_signal< sc_lv<64> > grp_fsquare_fu_331_output_r_d0;
    sc_signal< sc_lv<5> > grp_fsquare_fu_331_in_r_address0;
    sc_signal< sc_logic > grp_fsquare_fu_331_in_r_ce0;
    sc_signal< sc_lv<64> > grp_fsquare_fu_331_in_r_q0;
    sc_signal< sc_logic > grp_fsquare_fu_338_ap_start;
    sc_signal< sc_logic > grp_fsquare_fu_338_ap_done;
    sc_signal< sc_logic > grp_fsquare_fu_338_ap_idle;
    sc_signal< sc_logic > grp_fsquare_fu_338_ap_ready;
    sc_signal< sc_lv<5> > grp_fsquare_fu_338_output_r_address0;
    sc_signal< sc_logic > grp_fsquare_fu_338_output_r_ce0;
    sc_signal< sc_logic > grp_fsquare_fu_338_output_r_we0;
    sc_signal< sc_lv<64> > grp_fsquare_fu_338_output_r_d0;
    sc_signal< sc_lv<5> > grp_fsquare_fu_338_in_r_address0;
    sc_signal< sc_logic > grp_fsquare_fu_338_in_r_ce0;
    sc_signal< sc_logic > grp_fproduct_fu_345_ap_start;
    sc_signal< sc_logic > grp_fproduct_fu_345_ap_done;
    sc_signal< sc_logic > grp_fproduct_fu_345_ap_idle;
    sc_signal< sc_logic > grp_fproduct_fu_345_ap_ready;
    sc_signal< sc_lv<5> > grp_fproduct_fu_345_output_r_address0;
    sc_signal< sc_logic > grp_fproduct_fu_345_output_r_ce0;
    sc_signal< sc_logic > grp_fproduct_fu_345_output_r_we0;
    sc_signal< sc_lv<64> > grp_fproduct_fu_345_output_r_d0;
    sc_signal< sc_lv<5> > grp_fproduct_fu_345_in2_address0;
    sc_signal< sc_logic > grp_fproduct_fu_345_in2_ce0;
    sc_signal< sc_lv<64> > grp_fproduct_fu_345_in2_q0;
    sc_signal< sc_lv<5> > grp_fproduct_fu_345_in_r_address0;
    sc_signal< sc_logic > grp_fproduct_fu_345_in_r_ce0;
    sc_signal< sc_lv<64> > grp_fproduct_fu_345_in_r_q0;
    sc_signal< sc_logic > grp_fproduct_1_fu_358_ap_start;
    sc_signal< sc_logic > grp_fproduct_1_fu_358_ap_done;
    sc_signal< sc_logic > grp_fproduct_1_fu_358_ap_idle;
    sc_signal< sc_logic > grp_fproduct_1_fu_358_ap_ready;
    sc_signal< sc_lv<5> > grp_fproduct_1_fu_358_output_r_address0;
    sc_signal< sc_logic > grp_fproduct_1_fu_358_output_r_ce0;
    sc_signal< sc_logic > grp_fproduct_1_fu_358_output_r_we0;
    sc_signal< sc_lv<64> > grp_fproduct_1_fu_358_output_r_d0;
    sc_signal< sc_lv<5> > grp_fproduct_1_fu_358_in2_address0;
    sc_signal< sc_logic > grp_fproduct_1_fu_358_in2_ce0;
    sc_signal< sc_lv<4> > grp_fproduct_1_fu_358_in_r_address0;
    sc_signal< sc_logic > grp_fproduct_1_fu_358_in_r_ce0;
    sc_signal< sc_logic > grp_freduce_degree_fu_366_ap_start;
    sc_signal< sc_logic > grp_freduce_degree_fu_366_ap_done;
    sc_signal< sc_logic > grp_freduce_degree_fu_366_ap_idle;
    sc_signal< sc_logic > grp_freduce_degree_fu_366_ap_ready;
    sc_signal< sc_lv<5> > grp_freduce_degree_fu_366_output_r_address0;
    sc_signal< sc_logic > grp_freduce_degree_fu_366_output_r_ce0;
    sc_signal< sc_logic > grp_freduce_degree_fu_366_output_r_we0;
    sc_signal< sc_lv<64> > grp_freduce_degree_fu_366_output_r_d0;
    sc_signal< sc_lv<64> > grp_freduce_degree_fu_366_output_r_q0;
    sc_signal< sc_lv<5> > grp_freduce_degree_fu_366_output_r_address1;
    sc_signal< sc_logic > grp_freduce_degree_fu_366_output_r_ce1;
    sc_signal< sc_logic > grp_freduce_degree_fu_366_output_r_we1;
    sc_signal< sc_lv<64> > grp_freduce_degree_fu_366_output_r_d1;
    sc_signal< sc_lv<64> > grp_freduce_degree_fu_366_output_r_q1;
    sc_signal< sc_logic > grp_freduce_coefficients_fu_373_ap_start;
    sc_signal< sc_logic > grp_freduce_coefficients_fu_373_ap_done;
    sc_signal< sc_logic > grp_freduce_coefficients_fu_373_ap_idle;
    sc_signal< sc_logic > grp_freduce_coefficients_fu_373_ap_ready;
    sc_signal< sc_lv<5> > grp_freduce_coefficients_fu_373_output_r_address0;
    sc_signal< sc_logic > grp_freduce_coefficients_fu_373_output_r_ce0;
    sc_signal< sc_logic > grp_freduce_coefficients_fu_373_output_r_we0;
    sc_signal< sc_lv<64> > grp_freduce_coefficients_fu_373_output_r_d0;
    sc_signal< sc_lv<64> > grp_freduce_coefficients_fu_373_output_r_q0;
    sc_signal< sc_lv<5> > grp_freduce_coefficients_fu_373_output_r_address1;
    sc_signal< sc_logic > grp_freduce_coefficients_fu_373_output_r_ce1;
    sc_signal< sc_logic > grp_freduce_coefficients_fu_373_output_r_we1;
    sc_signal< sc_lv<64> > grp_freduce_coefficients_fu_373_output_r_d1;
    sc_signal< sc_lv<64> > grp_freduce_coefficients_fu_373_output_r_q1;
    sc_signal< sc_logic > grp_fsum_fu_380_ap_start;
    sc_signal< sc_logic > grp_fsum_fu_380_ap_done;
    sc_signal< sc_logic > grp_fsum_fu_380_ap_idle;
    sc_signal< sc_logic > grp_fsum_fu_380_ap_ready;
    sc_signal< sc_lv<5> > grp_fsum_fu_380_output_r_address0;
    sc_signal< sc_logic > grp_fsum_fu_380_output_r_ce0;
    sc_signal< sc_logic > grp_fsum_fu_380_output_r_we0;
    sc_signal< sc_lv<64> > grp_fsum_fu_380_output_r_d0;
    sc_signal< sc_lv<64> > grp_fsum_fu_380_output_r_q0;
    sc_signal< sc_lv<5> > grp_fsum_fu_380_output_r_address1;
    sc_signal< sc_logic > grp_fsum_fu_380_output_r_ce1;
    sc_signal< sc_logic > grp_fsum_fu_380_output_r_we1;
    sc_signal< sc_lv<64> > grp_fsum_fu_380_output_r_d1;
    sc_signal< sc_lv<64> > grp_fsum_fu_380_output_r_q1;
    sc_signal< sc_lv<5> > grp_fsum_fu_380_in_r_address0;
    sc_signal< sc_logic > grp_fsum_fu_380_in_r_ce0;
    sc_signal< sc_lv<64> > grp_fsum_fu_380_in_r_q0;
    sc_signal< sc_lv<5> > grp_fsum_fu_380_in_r_address1;
    sc_signal< sc_logic > grp_fsum_fu_380_in_r_ce1;
    sc_signal< sc_lv<64> > grp_fsum_fu_380_in_r_q1;
    sc_signal< sc_logic > grp_fdifference_1_fu_390_ap_start;
    sc_signal< sc_logic > grp_fdifference_1_fu_390_ap_done;
    sc_signal< sc_logic > grp_fdifference_1_fu_390_ap_idle;
    sc_signal< sc_logic > grp_fdifference_1_fu_390_ap_ready;
    sc_signal< sc_lv<5> > grp_fdifference_1_fu_390_output_r_address0;
    sc_signal< sc_logic > grp_fdifference_1_fu_390_output_r_ce0;
    sc_signal< sc_logic > grp_fdifference_1_fu_390_output_r_we0;
    sc_signal< sc_lv<64> > grp_fdifference_1_fu_390_output_r_d0;
    sc_signal< sc_lv<64> > grp_fdifference_1_fu_390_output_r_q0;
    sc_signal< sc_lv<4> > grp_fdifference_1_fu_390_in_r_address0;
    sc_signal< sc_logic > grp_fdifference_1_fu_390_in_r_ce0;
    sc_signal< sc_lv<64> > grp_fdifference_1_fu_390_in_r_q0;
    sc_signal< sc_logic > grp_p_memcpy_fu_398_ap_start;
    sc_signal< sc_logic > grp_p_memcpy_fu_398_ap_done;
    sc_signal< sc_logic > grp_p_memcpy_fu_398_ap_idle;
    sc_signal< sc_logic > grp_p_memcpy_fu_398_ap_ready;
    sc_signal< sc_lv<4> > grp_p_memcpy_fu_398_dst_address0;
    sc_signal< sc_logic > grp_p_memcpy_fu_398_dst_ce0;
    sc_signal< sc_logic > grp_p_memcpy_fu_398_dst_we0;
    sc_signal< sc_lv<64> > grp_p_memcpy_fu_398_dst_d0;
    sc_signal< sc_lv<5> > grp_p_memcpy_fu_398_src_address0;
    sc_signal< sc_logic > grp_p_memcpy_fu_398_src_ce0;
    sc_signal< sc_lv<64> > grp_p_memcpy_fu_398_src_q0;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_lv<4> > i_i9_reg_209;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_logic > ap_CS_fsm_state37;
    sc_signal< sc_logic > ap_CS_fsm_state39;
    sc_signal< sc_logic > ap_CS_fsm_state41;
    sc_signal< sc_lv<4> > i_i3_reg_243;
    sc_signal< sc_logic > ap_CS_fsm_state44;
    sc_signal< sc_lv<1> > exitcond_i2_fu_448_p2;
    sc_signal< sc_logic > ap_reg_grp_fsquare_fu_331_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_logic > ap_reg_grp_fsquare_fu_338_ap_start;
    sc_signal< sc_logic > ap_reg_grp_fproduct_fu_345_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_logic > ap_CS_fsm_state48;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< sc_logic > ap_CS_fsm_state49;
    sc_signal< sc_logic > ap_reg_grp_fproduct_1_fu_358_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_logic > ap_reg_grp_freduce_degree_fu_366_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state34;
    sc_signal< sc_logic > ap_CS_fsm_state50;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_logic > ap_CS_fsm_state35;
    sc_signal< sc_logic > ap_CS_fsm_state51;
    sc_signal< sc_logic > ap_reg_grp_freduce_coefficients_fu_373_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_logic > ap_CS_fsm_state36;
    sc_signal< sc_logic > ap_CS_fsm_state52;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state45;
    sc_signal< sc_logic > ap_CS_fsm_state53;
    sc_signal< sc_logic > ap_reg_grp_fsum_fu_380_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state46;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state47;
    sc_signal< sc_logic > ap_reg_grp_fdifference_1_fu_390_ap_start;
    sc_signal< sc_logic > ap_reg_grp_p_memcpy_fu_398_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > tmp_i_23_fu_435_p1;
    sc_signal< sc_lv<64> > sum_i_cast_fu_459_p1;
    sc_signal< sc_lv<64> > tmp_930_i_fu_441_p2;
    sc_signal< sc_lv<64> > tmp_322_i_fu_316_p2;
    sc_signal< sc_lv<5> > grp_fu_254_p0;
    sc_signal< sc_lv<5> > tmp_i4_cast_fu_454_p1;
    sc_signal< sc_lv<5> > grp_fu_254_p1;
    sc_signal< sc_lv<53> > ap_NS_fsm;
    sc_signal< bool > ap_block_state4_on_subcall_done;
    sc_signal< bool > ap_block_state6_on_subcall_done;
    sc_signal< bool > ap_block_state8_on_subcall_done;
    sc_signal< bool > ap_block_state10_on_subcall_done;
    sc_signal< bool > ap_block_state12_on_subcall_done;
    sc_signal< bool > ap_block_state14_on_subcall_done;
    sc_signal< bool > ap_block_state18_on_subcall_done;
    sc_signal< bool > ap_block_state31_on_subcall_done;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<53> ap_ST_fsm_state1;
    static const sc_lv<53> ap_ST_fsm_state2;
    static const sc_lv<53> ap_ST_fsm_state3;
    static const sc_lv<53> ap_ST_fsm_state4;
    static const sc_lv<53> ap_ST_fsm_state5;
    static const sc_lv<53> ap_ST_fsm_state6;
    static const sc_lv<53> ap_ST_fsm_state7;
    static const sc_lv<53> ap_ST_fsm_state8;
    static const sc_lv<53> ap_ST_fsm_state9;
    static const sc_lv<53> ap_ST_fsm_state10;
    static const sc_lv<53> ap_ST_fsm_state11;
    static const sc_lv<53> ap_ST_fsm_state12;
    static const sc_lv<53> ap_ST_fsm_state13;
    static const sc_lv<53> ap_ST_fsm_state14;
    static const sc_lv<53> ap_ST_fsm_state15;
    static const sc_lv<53> ap_ST_fsm_state16;
    static const sc_lv<53> ap_ST_fsm_state17;
    static const sc_lv<53> ap_ST_fsm_state18;
    static const sc_lv<53> ap_ST_fsm_state19;
    static const sc_lv<53> ap_ST_fsm_state20;
    static const sc_lv<53> ap_ST_fsm_state21;
    static const sc_lv<53> ap_ST_fsm_state22;
    static const sc_lv<53> ap_ST_fsm_state23;
    static const sc_lv<53> ap_ST_fsm_state24;
    static const sc_lv<53> ap_ST_fsm_state25;
    static const sc_lv<53> ap_ST_fsm_state26;
    static const sc_lv<53> ap_ST_fsm_state27;
    static const sc_lv<53> ap_ST_fsm_state28;
    static const sc_lv<53> ap_ST_fsm_state29;
    static const sc_lv<53> ap_ST_fsm_state30;
    static const sc_lv<53> ap_ST_fsm_state31;
    static const sc_lv<53> ap_ST_fsm_state32;
    static const sc_lv<53> ap_ST_fsm_state33;
    static const sc_lv<53> ap_ST_fsm_state34;
    static const sc_lv<53> ap_ST_fsm_state35;
    static const sc_lv<53> ap_ST_fsm_state36;
    static const sc_lv<53> ap_ST_fsm_state37;
    static const sc_lv<53> ap_ST_fsm_state38;
    static const sc_lv<53> ap_ST_fsm_state39;
    static const sc_lv<53> ap_ST_fsm_state40;
    static const sc_lv<53> ap_ST_fsm_state41;
    static const sc_lv<53> ap_ST_fsm_state42;
    static const sc_lv<53> ap_ST_fsm_state43;
    static const sc_lv<53> ap_ST_fsm_state44;
    static const sc_lv<53> ap_ST_fsm_state45;
    static const sc_lv<53> ap_ST_fsm_state46;
    static const sc_lv<53> ap_ST_fsm_state47;
    static const sc_lv<53> ap_ST_fsm_state48;
    static const sc_lv<53> ap_ST_fsm_state49;
    static const sc_lv<53> ap_ST_fsm_state50;
    static const sc_lv<53> ap_ST_fsm_state51;
    static const sc_lv<53> ap_ST_fsm_state52;
    static const sc_lv<53> ap_ST_fsm_state53;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2A;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_31;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<32> ap_const_lv32_32;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_33;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_2D;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_2E;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<5> ap_const_lv5_A;
    static const sc_lv<64> ap_const_lv64_1DB41;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_9;
    static const bool ap_const_boolean_0;
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
    void thread_ap_CS_fsm_state44();
    void thread_ap_CS_fsm_state45();
    void thread_ap_CS_fsm_state46();
    void thread_ap_CS_fsm_state47();
    void thread_ap_CS_fsm_state48();
    void thread_ap_CS_fsm_state49();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state50();
    void thread_ap_CS_fsm_state51();
    void thread_ap_CS_fsm_state52();
    void thread_ap_CS_fsm_state53();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state10_on_subcall_done();
    void thread_ap_block_state12_on_subcall_done();
    void thread_ap_block_state14_on_subcall_done();
    void thread_ap_block_state18_on_subcall_done();
    void thread_ap_block_state31_on_subcall_done();
    void thread_ap_block_state4_on_subcall_done();
    void thread_ap_block_state6_on_subcall_done();
    void thread_ap_block_state8_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_exitcond_i1_fu_418_p2();
    void thread_exitcond_i2_fu_448_p2();
    void thread_exitcond_i_fu_407_p2();
    void thread_grp_fdifference_1_fu_390_ap_start();
    void thread_grp_fdifference_1_fu_390_in_r_q0();
    void thread_grp_fdifference_1_fu_390_output_r_q0();
    void thread_grp_fproduct_1_fu_358_ap_start();
    void thread_grp_fproduct_fu_345_ap_start();
    void thread_grp_fproduct_fu_345_in2_q0();
    void thread_grp_fproduct_fu_345_in_r_q0();
    void thread_grp_freduce_coefficients_fu_373_ap_start();
    void thread_grp_freduce_coefficients_fu_373_output_r_q0();
    void thread_grp_freduce_coefficients_fu_373_output_r_q1();
    void thread_grp_freduce_degree_fu_366_ap_start();
    void thread_grp_freduce_degree_fu_366_output_r_q0();
    void thread_grp_freduce_degree_fu_366_output_r_q1();
    void thread_grp_fsquare_fu_331_ap_start();
    void thread_grp_fsquare_fu_331_in_r_q0();
    void thread_grp_fsquare_fu_338_ap_start();
    void thread_grp_fsum_fu_380_ap_start();
    void thread_grp_fsum_fu_380_in_r_q0();
    void thread_grp_fsum_fu_380_in_r_q1();
    void thread_grp_fsum_fu_380_output_r_q0();
    void thread_grp_fsum_fu_380_output_r_q1();
    void thread_grp_fu_254_p0();
    void thread_grp_fu_254_p1();
    void thread_grp_fu_254_p2();
    void thread_grp_p_memcpy_fu_398_ap_start();
    void thread_grp_p_memcpy_fu_398_src_q0();
    void thread_origx_address0();
    void thread_origx_ce0();
    void thread_origx_we0();
    void thread_origxprime_address0();
    void thread_origxprime_ce0();
    void thread_origxprime_we0();
    void thread_qmqp_address0();
    void thread_qmqp_ce0();
    void thread_sum_i_cast_fu_459_p1();
    void thread_tmp_322_i_fu_316_p2();
    void thread_tmp_930_i_fu_441_p2();
    void thread_tmp_i2_fu_424_p1();
    void thread_tmp_i3_26_fu_470_p1();
    void thread_tmp_i3_fu_429_p2();
    void thread_tmp_i4_cast_fu_454_p1();
    void thread_tmp_i5_fu_464_p2();
    void thread_tmp_i_23_fu_435_p1();
    void thread_tmp_i_fu_413_p1();
    void thread_x2_address0();
    void thread_x2_address1();
    void thread_x2_ce0();
    void thread_x2_ce1();
    void thread_x2_d0();
    void thread_x2_d1();
    void thread_x2_we0();
    void thread_x2_we1();
    void thread_x3_address0();
    void thread_x3_ce0();
    void thread_x3_d0();
    void thread_x3_we0();
    void thread_x_address0();
    void thread_x_address1();
    void thread_x_ce0();
    void thread_x_ce1();
    void thread_x_d0();
    void thread_x_d1();
    void thread_x_we0();
    void thread_x_we1();
    void thread_xprime_address0();
    void thread_xprime_address1();
    void thread_xprime_ce0();
    void thread_xprime_ce1();
    void thread_xprime_d0();
    void thread_xprime_d1();
    void thread_xprime_we0();
    void thread_xprime_we1();
    void thread_xx_address0();
    void thread_xx_ce0();
    void thread_xx_ce1();
    void thread_xx_we0();
    void thread_xxprime_address0();
    void thread_xxprime_address1();
    void thread_xxprime_ce0();
    void thread_xxprime_ce1();
    void thread_xxprime_d0();
    void thread_xxprime_d1();
    void thread_xxprime_we0();
    void thread_xxprime_we1();
    void thread_xxxprime_address0();
    void thread_xxxprime_ce0();
    void thread_xxxprime_we0();
    void thread_z2_address0();
    void thread_z2_address1();
    void thread_z2_ce0();
    void thread_z2_ce1();
    void thread_z2_d0();
    void thread_z2_d1();
    void thread_z2_we0();
    void thread_z2_we1();
    void thread_z3_address0();
    void thread_z3_ce0();
    void thread_z3_d0();
    void thread_z3_we0();
    void thread_z_address0();
    void thread_z_address1();
    void thread_z_ce0();
    void thread_z_ce1();
    void thread_z_d0();
    void thread_z_we0();
    void thread_zprime_address0();
    void thread_zprime_address1();
    void thread_zprime_ce0();
    void thread_zprime_ce1();
    void thread_zprime_d0();
    void thread_zprime_we0();
    void thread_zz_address0();
    void thread_zz_ce0();
    void thread_zz_d0();
    void thread_zz_we0();
    void thread_zzprime_address0();
    void thread_zzprime_address1();
    void thread_zzprime_ce0();
    void thread_zzprime_ce1();
    void thread_zzprime_d0();
    void thread_zzprime_d1();
    void thread_zzprime_we0();
    void thread_zzprime_we1();
    void thread_zzz_address0();
    void thread_zzz_address1();
    void thread_zzz_ce0();
    void thread_zzz_ce1();
    void thread_zzz_d0();
    void thread_zzz_d1();
    void thread_zzz_we0();
    void thread_zzz_we1();
    void thread_zzzprime_address0();
    void thread_zzzprime_ce0();
    void thread_zzzprime_we0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif