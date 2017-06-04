// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _choose_t_HH_
#define _choose_t_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "crypto_sign_ed25519_7.h"
#include "cmov_aff.h"
#include "choose_t_ge25519_qcK.h"
#include "choose_t_ge25519_rcU.h"
#include "choose_t_t_v.h"
#include "choose_t_v_v.h"

namespace ap_rtl {

struct choose_t : public sc_module {
    // Port declarations 27
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > t_x_v_address0;
    sc_out< sc_logic > t_x_v_ce0;
    sc_out< sc_logic > t_x_v_we0;
    sc_out< sc_lv<32> > t_x_v_d0;
    sc_in< sc_lv<32> > t_x_v_q0;
    sc_out< sc_lv<5> > t_x_v_address1;
    sc_out< sc_logic > t_x_v_ce1;
    sc_out< sc_logic > t_x_v_we1;
    sc_out< sc_lv<32> > t_x_v_d1;
    sc_in< sc_lv<32> > t_x_v_q1;
    sc_out< sc_lv<5> > t_y_v_address0;
    sc_out< sc_logic > t_y_v_ce0;
    sc_out< sc_logic > t_y_v_we0;
    sc_out< sc_lv<32> > t_y_v_d0;
    sc_in< sc_lv<32> > t_y_v_q0;
    sc_out< sc_lv<5> > t_y_v_address1;
    sc_out< sc_logic > t_y_v_ce1;
    sc_out< sc_logic > t_y_v_we1;
    sc_out< sc_lv<32> > t_y_v_d1;
    sc_in< sc_lv<7> > pos_r;
    sc_in< sc_lv<8> > b;


    // Module declarations
    choose_t(sc_module_name name);
    SC_HAS_PROCESS(choose_t);

    ~choose_t();

    sc_trace_file* mVcdFile;

    choose_t_ge25519_qcK* ge25519_base_multipl_1_U;
    choose_t_ge25519_rcU* ge25519_base_multipl_U;
    choose_t_t_v* t_v_U;
    choose_t_v_v* v_v_U;
    crypto_sign_ed25519_7* grp_crypto_sign_ed25519_7_fu_1424;
    cmov_aff* grp_cmov_aff_fu_1430;
    sc_signal< sc_lv<31> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<14> > ge25519_base_multipl_1_address0;
    sc_signal< sc_logic > ge25519_base_multipl_1_ce0;
    sc_signal< sc_lv<32> > ge25519_base_multipl_1_q0;
    sc_signal< sc_lv<14> > ge25519_base_multipl_1_address1;
    sc_signal< sc_logic > ge25519_base_multipl_1_ce1;
    sc_signal< sc_lv<32> > ge25519_base_multipl_1_q1;
    sc_signal< sc_lv<14> > ge25519_base_multipl_address0;
    sc_signal< sc_logic > ge25519_base_multipl_ce0;
    sc_signal< sc_lv<32> > ge25519_base_multipl_q0;
    sc_signal< sc_lv<14> > ge25519_base_multipl_address1;
    sc_signal< sc_logic > ge25519_base_multipl_ce1;
    sc_signal< sc_lv<32> > ge25519_base_multipl_q1;
    sc_signal< sc_lv<9> > tmp_fu_1457_p2;
    sc_signal< sc_lv<9> > tmp_reg_2240;
    sc_signal< sc_lv<14> > tmp_792_fu_1463_p3;
    sc_signal< sc_lv<14> > tmp_792_reg_2248;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<9> > tmp_s_fu_1943_p2;
    sc_signal< sc_lv<9> > tmp_s_reg_2612;
    sc_signal< sc_lv<1> > tmp_856_fu_1998_p2;
    sc_signal< sc_lv<1> > tmp_856_reg_2618;
    sc_signal< sc_lv<9> > tmp_857_fu_2005_p2;
    sc_signal< sc_lv<9> > tmp_857_reg_2623;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<1> > tmp_858_fu_2058_p2;
    sc_signal< sc_lv<1> > tmp_858_reg_2629;
    sc_signal< sc_lv<9> > tmp_859_fu_2065_p2;
    sc_signal< sc_lv<9> > tmp_859_reg_2634;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<1> > tmp_860_fu_2118_p2;
    sc_signal< sc_lv<1> > tmp_860_reg_2640;
    sc_signal< sc_lv<9> > tmp_861_fu_2125_p2;
    sc_signal< sc_lv<9> > tmp_861_reg_2645;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_lv<1> > tmp_868_reg_2651;
    sc_signal< sc_lv<6> > i_fu_2162_p2;
    sc_signal< sc_lv<6> > i_reg_2659;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_lv<64> > tmp_i1_fu_2168_p1;
    sc_signal< sc_lv<64> > tmp_i1_reg_2664;
    sc_signal< sc_lv<1> > exitcond_i_fu_2156_p2;
    sc_signal< sc_lv<6> > i_82_fu_2179_p2;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_lv<1> > tmp_869_reg_2682;
    sc_signal< sc_lv<1> > exitcond_i_i_fu_2173_p2;
    sc_signal< sc_lv<32> > mask_fu_2197_p3;
    sc_signal< sc_lv<32> > mask_reg_2687;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_logic > grp_crypto_sign_ed25519_7_fu_1424_ap_done;
    sc_signal< sc_lv<6> > i_83_fu_2210_p2;
    sc_signal< sc_lv<6> > i_83_reg_2695;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_lv<1> > exitcond_i5_fu_2204_p2;
    sc_signal< sc_lv<5> > t_x_v_addr_33_reg_2705;
    sc_signal< sc_lv<5> > t_v_address0;
    sc_signal< sc_logic > t_v_ce0;
    sc_signal< sc_logic > t_v_we0;
    sc_signal< sc_lv<32> > t_v_q0;
    sc_signal< sc_lv<5> > v_v_address0;
    sc_signal< sc_logic > v_v_ce0;
    sc_signal< sc_logic > v_v_we0;
    sc_signal< sc_lv<32> > v_v_d0;
    sc_signal< sc_lv<32> > v_v_q0;
    sc_signal< sc_logic > v_v_ce1;
    sc_signal< sc_logic > v_v_we1;
    sc_signal< sc_lv<32> > v_v_q1;
    sc_signal< sc_logic > grp_crypto_sign_ed25519_7_fu_1424_ap_start;
    sc_signal< sc_logic > grp_crypto_sign_ed25519_7_fu_1424_ap_idle;
    sc_signal< sc_logic > grp_crypto_sign_ed25519_7_fu_1424_ap_ready;
    sc_signal< sc_lv<5> > grp_crypto_sign_ed25519_7_fu_1424_r_v_address0;
    sc_signal< sc_logic > grp_crypto_sign_ed25519_7_fu_1424_r_v_ce0;
    sc_signal< sc_logic > grp_crypto_sign_ed25519_7_fu_1424_r_v_we0;
    sc_signal< sc_lv<32> > grp_crypto_sign_ed25519_7_fu_1424_r_v_d0;
    sc_signal< sc_lv<5> > grp_crypto_sign_ed25519_7_fu_1424_r_v_address1;
    sc_signal< sc_logic > grp_crypto_sign_ed25519_7_fu_1424_r_v_ce1;
    sc_signal< sc_logic > grp_crypto_sign_ed25519_7_fu_1424_r_v_we1;
    sc_signal< sc_lv<32> > grp_crypto_sign_ed25519_7_fu_1424_r_v_d1;
    sc_signal< sc_lv<5> > grp_crypto_sign_ed25519_7_fu_1424_y_v_address0;
    sc_signal< sc_logic > grp_crypto_sign_ed25519_7_fu_1424_y_v_ce0;
    sc_signal< sc_logic > grp_cmov_aff_fu_1430_ap_start;
    sc_signal< sc_logic > grp_cmov_aff_fu_1430_ap_done;
    sc_signal< sc_logic > grp_cmov_aff_fu_1430_ap_idle;
    sc_signal< sc_logic > grp_cmov_aff_fu_1430_ap_ready;
    sc_signal< sc_lv<5> > grp_cmov_aff_fu_1430_r_x_v_address0;
    sc_signal< sc_logic > grp_cmov_aff_fu_1430_r_x_v_ce0;
    sc_signal< sc_logic > grp_cmov_aff_fu_1430_r_x_v_we0;
    sc_signal< sc_lv<32> > grp_cmov_aff_fu_1430_r_x_v_d0;
    sc_signal< sc_lv<5> > grp_cmov_aff_fu_1430_r_y_v_address0;
    sc_signal< sc_logic > grp_cmov_aff_fu_1430_r_y_v_ce0;
    sc_signal< sc_logic > grp_cmov_aff_fu_1430_r_y_v_we0;
    sc_signal< sc_lv<32> > grp_cmov_aff_fu_1430_r_y_v_d0;
    sc_signal< sc_lv<14> > grp_cmov_aff_fu_1430_p_x_v_address0;
    sc_signal< sc_logic > grp_cmov_aff_fu_1430_p_x_v_ce0;
    sc_signal< sc_lv<9> > grp_cmov_aff_fu_1430_tmp_919;
    sc_signal< sc_lv<14> > grp_cmov_aff_fu_1430_p_y_v_address0;
    sc_signal< sc_logic > grp_cmov_aff_fu_1430_p_y_v_ce0;
    sc_signal< sc_lv<9> > grp_cmov_aff_fu_1430_tmp_9191;
    sc_signal< sc_lv<1> > grp_cmov_aff_fu_1430_b;
    sc_signal< sc_lv<6> > i_i_reg_1391;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_lv<6> > i_i_i_reg_1402;
    sc_signal< sc_lv<6> > i_i5_reg_1413;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_logic > ap_reg_grp_crypto_sign_ed25519_7_fu_1424_ap_start;
    sc_signal< sc_logic > ap_reg_grp_cmov_aff_fu_1430_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<64> > tmp_793_fu_1471_p1;
    sc_signal< sc_lv<64> > tmp_795_fu_1483_p3;
    sc_signal< sc_lv<64> > tmp_797_fu_1498_p3;
    sc_signal< sc_lv<64> > tmp_799_fu_1513_p3;
    sc_signal< sc_lv<64> > tmp_801_fu_1528_p3;
    sc_signal< sc_lv<64> > tmp_803_fu_1543_p3;
    sc_signal< sc_lv<64> > tmp_805_fu_1558_p3;
    sc_signal< sc_lv<64> > tmp_807_fu_1573_p3;
    sc_signal< sc_lv<64> > tmp_809_fu_1588_p3;
    sc_signal< sc_lv<64> > tmp_811_fu_1603_p3;
    sc_signal< sc_lv<64> > tmp_813_fu_1618_p3;
    sc_signal< sc_lv<64> > tmp_815_fu_1633_p3;
    sc_signal< sc_lv<64> > tmp_817_fu_1648_p3;
    sc_signal< sc_lv<64> > tmp_819_fu_1663_p3;
    sc_signal< sc_lv<64> > tmp_821_fu_1678_p3;
    sc_signal< sc_lv<64> > tmp_823_fu_1693_p3;
    sc_signal< sc_lv<64> > tmp_825_fu_1708_p3;
    sc_signal< sc_lv<64> > tmp_827_fu_1723_p3;
    sc_signal< sc_lv<64> > tmp_829_fu_1738_p3;
    sc_signal< sc_lv<64> > tmp_831_fu_1753_p3;
    sc_signal< sc_lv<64> > tmp_833_fu_1768_p3;
    sc_signal< sc_lv<64> > tmp_835_fu_1783_p3;
    sc_signal< sc_lv<64> > tmp_837_fu_1798_p3;
    sc_signal< sc_lv<64> > tmp_839_fu_1813_p3;
    sc_signal< sc_lv<64> > tmp_841_fu_1828_p3;
    sc_signal< sc_lv<64> > tmp_843_fu_1843_p3;
    sc_signal< sc_lv<64> > tmp_845_fu_1858_p3;
    sc_signal< sc_lv<64> > tmp_847_fu_1873_p3;
    sc_signal< sc_lv<64> > tmp_849_fu_1888_p3;
    sc_signal< sc_lv<64> > tmp_851_fu_1903_p3;
    sc_signal< sc_lv<64> > tmp_853_fu_1918_p3;
    sc_signal< sc_lv<64> > tmp_855_fu_1933_p3;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<64> > tmp_i_i_fu_2185_p1;
    sc_signal< sc_lv<64> > tmp_i_fu_2216_p1;
    sc_signal< sc_lv<32> > tmp_896_i_fu_2233_p2;
    sc_signal< sc_lv<9> > p_shl_fu_1449_p3;
    sc_signal< sc_lv<9> > pos_cast4_fu_1445_p1;
    sc_signal< sc_lv<14> > tmp_794_fu_1477_p2;
    sc_signal< sc_lv<14> > tmp_796_fu_1493_p2;
    sc_signal< sc_lv<14> > tmp_798_fu_1508_p2;
    sc_signal< sc_lv<14> > tmp_800_fu_1523_p2;
    sc_signal< sc_lv<14> > tmp_802_fu_1538_p2;
    sc_signal< sc_lv<14> > tmp_804_fu_1553_p2;
    sc_signal< sc_lv<14> > tmp_806_fu_1568_p2;
    sc_signal< sc_lv<14> > tmp_808_fu_1583_p2;
    sc_signal< sc_lv<14> > tmp_810_fu_1598_p2;
    sc_signal< sc_lv<14> > tmp_812_fu_1613_p2;
    sc_signal< sc_lv<14> > tmp_814_fu_1628_p2;
    sc_signal< sc_lv<14> > tmp_816_fu_1643_p2;
    sc_signal< sc_lv<14> > tmp_818_fu_1658_p2;
    sc_signal< sc_lv<14> > tmp_820_fu_1673_p2;
    sc_signal< sc_lv<14> > tmp_822_fu_1688_p2;
    sc_signal< sc_lv<14> > tmp_824_fu_1703_p2;
    sc_signal< sc_lv<14> > tmp_826_fu_1718_p2;
    sc_signal< sc_lv<14> > tmp_828_fu_1733_p2;
    sc_signal< sc_lv<14> > tmp_830_fu_1748_p2;
    sc_signal< sc_lv<14> > tmp_832_fu_1763_p2;
    sc_signal< sc_lv<14> > tmp_834_fu_1778_p2;
    sc_signal< sc_lv<14> > tmp_836_fu_1793_p2;
    sc_signal< sc_lv<14> > tmp_838_fu_1808_p2;
    sc_signal< sc_lv<14> > tmp_840_fu_1823_p2;
    sc_signal< sc_lv<14> > tmp_842_fu_1838_p2;
    sc_signal< sc_lv<14> > tmp_844_fu_1853_p2;
    sc_signal< sc_lv<14> > tmp_846_fu_1868_p2;
    sc_signal< sc_lv<14> > tmp_848_fu_1883_p2;
    sc_signal< sc_lv<14> > tmp_850_fu_1898_p2;
    sc_signal< sc_lv<14> > tmp_852_fu_1913_p2;
    sc_signal< sc_lv<14> > tmp_854_fu_1928_p2;
    sc_signal< sc_lv<8> > x_fu_1950_p2;
    sc_signal< sc_lv<9> > y_cast_fu_1956_p1;
    sc_signal< sc_lv<9> > y_fu_1960_p2;
    sc_signal< sc_lv<8> > x_8_fu_1974_p2;
    sc_signal< sc_lv<9> > y_3_cast_fu_1980_p1;
    sc_signal< sc_lv<9> > y_1_fu_1984_p2;
    sc_signal< sc_lv<1> > tmp_863_fu_1990_p3;
    sc_signal< sc_lv<1> > tmp_862_fu_1966_p3;
    sc_signal< sc_lv<8> > x_9_fu_2012_p2;
    sc_signal< sc_lv<9> > y_6_cast_fu_2017_p1;
    sc_signal< sc_lv<9> > y_2_fu_2021_p2;
    sc_signal< sc_lv<8> > x_10_fu_2035_p2;
    sc_signal< sc_lv<9> > y_9_cast_fu_2040_p1;
    sc_signal< sc_lv<9> > y_3_fu_2044_p2;
    sc_signal< sc_lv<1> > tmp_865_fu_2050_p3;
    sc_signal< sc_lv<1> > tmp_864_fu_2027_p3;
    sc_signal< sc_lv<8> > x_11_fu_2072_p2;
    sc_signal< sc_lv<9> > y_12_cast_fu_2077_p1;
    sc_signal< sc_lv<9> > y_4_fu_2081_p2;
    sc_signal< sc_lv<8> > x_12_fu_2095_p2;
    sc_signal< sc_lv<9> > y_15_cast_fu_2100_p1;
    sc_signal< sc_lv<9> > y_5_fu_2104_p2;
    sc_signal< sc_lv<1> > tmp_867_fu_2110_p3;
    sc_signal< sc_lv<1> > tmp_866_fu_2087_p3;
    sc_signal< sc_lv<8> > x_13_fu_2132_p2;
    sc_signal< sc_lv<9> > y_18_cast_fu_2137_p1;
    sc_signal< sc_lv<9> > y_6_fu_2141_p2;
    sc_signal< sc_lv<32> > tmp_894_i_fu_2222_p2;
    sc_signal< sc_lv<32> > tmp_895_i_fu_2228_p2;
    sc_signal< sc_lv<31> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<31> ap_ST_fsm_state1;
    static const sc_lv<31> ap_ST_fsm_state2;
    static const sc_lv<31> ap_ST_fsm_state3;
    static const sc_lv<31> ap_ST_fsm_state4;
    static const sc_lv<31> ap_ST_fsm_state5;
    static const sc_lv<31> ap_ST_fsm_state6;
    static const sc_lv<31> ap_ST_fsm_state7;
    static const sc_lv<31> ap_ST_fsm_state8;
    static const sc_lv<31> ap_ST_fsm_state9;
    static const sc_lv<31> ap_ST_fsm_state10;
    static const sc_lv<31> ap_ST_fsm_state11;
    static const sc_lv<31> ap_ST_fsm_state12;
    static const sc_lv<31> ap_ST_fsm_state13;
    static const sc_lv<31> ap_ST_fsm_state14;
    static const sc_lv<31> ap_ST_fsm_state15;
    static const sc_lv<31> ap_ST_fsm_state16;
    static const sc_lv<31> ap_ST_fsm_state17;
    static const sc_lv<31> ap_ST_fsm_state18;
    static const sc_lv<31> ap_ST_fsm_state19;
    static const sc_lv<31> ap_ST_fsm_state20;
    static const sc_lv<31> ap_ST_fsm_state21;
    static const sc_lv<31> ap_ST_fsm_state22;
    static const sc_lv<31> ap_ST_fsm_state23;
    static const sc_lv<31> ap_ST_fsm_state24;
    static const sc_lv<31> ap_ST_fsm_state25;
    static const sc_lv<31> ap_ST_fsm_state26;
    static const sc_lv<31> ap_ST_fsm_state27;
    static const sc_lv<31> ap_ST_fsm_state28;
    static const sc_lv<31> ap_ST_fsm_state29;
    static const sc_lv<31> ap_ST_fsm_state30;
    static const sc_lv<31> ap_ST_fsm_state31;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<64> ap_const_lv64_8;
    static const sc_lv<64> ap_const_lv64_9;
    static const sc_lv<64> ap_const_lv64_A;
    static const sc_lv<64> ap_const_lv64_B;
    static const sc_lv<64> ap_const_lv64_C;
    static const sc_lv<64> ap_const_lv64_D;
    static const sc_lv<64> ap_const_lv64_E;
    static const sc_lv<64> ap_const_lv64_F;
    static const sc_lv<64> ap_const_lv64_10;
    static const sc_lv<64> ap_const_lv64_11;
    static const sc_lv<64> ap_const_lv64_12;
    static const sc_lv<64> ap_const_lv64_13;
    static const sc_lv<64> ap_const_lv64_14;
    static const sc_lv<64> ap_const_lv64_15;
    static const sc_lv<64> ap_const_lv64_16;
    static const sc_lv<64> ap_const_lv64_17;
    static const sc_lv<64> ap_const_lv64_18;
    static const sc_lv<64> ap_const_lv64_19;
    static const sc_lv<64> ap_const_lv64_1A;
    static const sc_lv<64> ap_const_lv64_1B;
    static const sc_lv<64> ap_const_lv64_1C;
    static const sc_lv<64> ap_const_lv64_1D;
    static const sc_lv<64> ap_const_lv64_1E;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<64> ap_const_lv64_1F;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<14> ap_const_lv14_1;
    static const sc_lv<50> ap_const_lv50_0;
    static const sc_lv<14> ap_const_lv14_2;
    static const sc_lv<14> ap_const_lv14_3;
    static const sc_lv<14> ap_const_lv14_4;
    static const sc_lv<14> ap_const_lv14_5;
    static const sc_lv<14> ap_const_lv14_6;
    static const sc_lv<14> ap_const_lv14_7;
    static const sc_lv<14> ap_const_lv14_8;
    static const sc_lv<14> ap_const_lv14_9;
    static const sc_lv<14> ap_const_lv14_A;
    static const sc_lv<14> ap_const_lv14_B;
    static const sc_lv<14> ap_const_lv14_C;
    static const sc_lv<14> ap_const_lv14_D;
    static const sc_lv<14> ap_const_lv14_E;
    static const sc_lv<14> ap_const_lv14_F;
    static const sc_lv<14> ap_const_lv14_10;
    static const sc_lv<14> ap_const_lv14_11;
    static const sc_lv<14> ap_const_lv14_12;
    static const sc_lv<14> ap_const_lv14_13;
    static const sc_lv<14> ap_const_lv14_14;
    static const sc_lv<14> ap_const_lv14_15;
    static const sc_lv<14> ap_const_lv14_16;
    static const sc_lv<14> ap_const_lv14_17;
    static const sc_lv<14> ap_const_lv14_18;
    static const sc_lv<14> ap_const_lv14_19;
    static const sc_lv<14> ap_const_lv14_1A;
    static const sc_lv<14> ap_const_lv14_1B;
    static const sc_lv<14> ap_const_lv14_1C;
    static const sc_lv<14> ap_const_lv14_1D;
    static const sc_lv<14> ap_const_lv14_1E;
    static const sc_lv<14> ap_const_lv14_1F;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<9> ap_const_lv9_1FF;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<9> ap_const_lv9_2;
    static const sc_lv<8> ap_const_lv8_2;
    static const sc_lv<8> ap_const_lv8_FE;
    static const sc_lv<9> ap_const_lv9_3;
    static const sc_lv<8> ap_const_lv8_3;
    static const sc_lv<8> ap_const_lv8_FD;
    static const sc_lv<9> ap_const_lv9_4;
    static const sc_lv<8> ap_const_lv8_FC;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
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
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_exitcond_i5_fu_2204_p2();
    void thread_exitcond_i_fu_2156_p2();
    void thread_exitcond_i_i_fu_2173_p2();
    void thread_ge25519_base_multipl_1_address0();
    void thread_ge25519_base_multipl_1_address1();
    void thread_ge25519_base_multipl_1_ce0();
    void thread_ge25519_base_multipl_1_ce1();
    void thread_ge25519_base_multipl_address0();
    void thread_ge25519_base_multipl_address1();
    void thread_ge25519_base_multipl_ce0();
    void thread_ge25519_base_multipl_ce1();
    void thread_grp_cmov_aff_fu_1430_ap_start();
    void thread_grp_cmov_aff_fu_1430_b();
    void thread_grp_cmov_aff_fu_1430_tmp_919();
    void thread_grp_cmov_aff_fu_1430_tmp_9191();
    void thread_grp_crypto_sign_ed25519_7_fu_1424_ap_start();
    void thread_i_82_fu_2179_p2();
    void thread_i_83_fu_2210_p2();
    void thread_i_fu_2162_p2();
    void thread_mask_fu_2197_p3();
    void thread_p_shl_fu_1449_p3();
    void thread_pos_cast4_fu_1445_p1();
    void thread_t_v_address0();
    void thread_t_v_ce0();
    void thread_t_v_we0();
    void thread_t_x_v_address0();
    void thread_t_x_v_address1();
    void thread_t_x_v_ce0();
    void thread_t_x_v_ce1();
    void thread_t_x_v_d0();
    void thread_t_x_v_d1();
    void thread_t_x_v_we0();
    void thread_t_x_v_we1();
    void thread_t_y_v_address0();
    void thread_t_y_v_address1();
    void thread_t_y_v_ce0();
    void thread_t_y_v_ce1();
    void thread_t_y_v_d0();
    void thread_t_y_v_d1();
    void thread_t_y_v_we0();
    void thread_t_y_v_we1();
    void thread_tmp_792_fu_1463_p3();
    void thread_tmp_793_fu_1471_p1();
    void thread_tmp_794_fu_1477_p2();
    void thread_tmp_795_fu_1483_p3();
    void thread_tmp_796_fu_1493_p2();
    void thread_tmp_797_fu_1498_p3();
    void thread_tmp_798_fu_1508_p2();
    void thread_tmp_799_fu_1513_p3();
    void thread_tmp_800_fu_1523_p2();
    void thread_tmp_801_fu_1528_p3();
    void thread_tmp_802_fu_1538_p2();
    void thread_tmp_803_fu_1543_p3();
    void thread_tmp_804_fu_1553_p2();
    void thread_tmp_805_fu_1558_p3();
    void thread_tmp_806_fu_1568_p2();
    void thread_tmp_807_fu_1573_p3();
    void thread_tmp_808_fu_1583_p2();
    void thread_tmp_809_fu_1588_p3();
    void thread_tmp_810_fu_1598_p2();
    void thread_tmp_811_fu_1603_p3();
    void thread_tmp_812_fu_1613_p2();
    void thread_tmp_813_fu_1618_p3();
    void thread_tmp_814_fu_1628_p2();
    void thread_tmp_815_fu_1633_p3();
    void thread_tmp_816_fu_1643_p2();
    void thread_tmp_817_fu_1648_p3();
    void thread_tmp_818_fu_1658_p2();
    void thread_tmp_819_fu_1663_p3();
    void thread_tmp_820_fu_1673_p2();
    void thread_tmp_821_fu_1678_p3();
    void thread_tmp_822_fu_1688_p2();
    void thread_tmp_823_fu_1693_p3();
    void thread_tmp_824_fu_1703_p2();
    void thread_tmp_825_fu_1708_p3();
    void thread_tmp_826_fu_1718_p2();
    void thread_tmp_827_fu_1723_p3();
    void thread_tmp_828_fu_1733_p2();
    void thread_tmp_829_fu_1738_p3();
    void thread_tmp_830_fu_1748_p2();
    void thread_tmp_831_fu_1753_p3();
    void thread_tmp_832_fu_1763_p2();
    void thread_tmp_833_fu_1768_p3();
    void thread_tmp_834_fu_1778_p2();
    void thread_tmp_835_fu_1783_p3();
    void thread_tmp_836_fu_1793_p2();
    void thread_tmp_837_fu_1798_p3();
    void thread_tmp_838_fu_1808_p2();
    void thread_tmp_839_fu_1813_p3();
    void thread_tmp_840_fu_1823_p2();
    void thread_tmp_841_fu_1828_p3();
    void thread_tmp_842_fu_1838_p2();
    void thread_tmp_843_fu_1843_p3();
    void thread_tmp_844_fu_1853_p2();
    void thread_tmp_845_fu_1858_p3();
    void thread_tmp_846_fu_1868_p2();
    void thread_tmp_847_fu_1873_p3();
    void thread_tmp_848_fu_1883_p2();
    void thread_tmp_849_fu_1888_p3();
    void thread_tmp_850_fu_1898_p2();
    void thread_tmp_851_fu_1903_p3();
    void thread_tmp_852_fu_1913_p2();
    void thread_tmp_853_fu_1918_p3();
    void thread_tmp_854_fu_1928_p2();
    void thread_tmp_855_fu_1933_p3();
    void thread_tmp_856_fu_1998_p2();
    void thread_tmp_857_fu_2005_p2();
    void thread_tmp_858_fu_2058_p2();
    void thread_tmp_859_fu_2065_p2();
    void thread_tmp_860_fu_2118_p2();
    void thread_tmp_861_fu_2125_p2();
    void thread_tmp_862_fu_1966_p3();
    void thread_tmp_863_fu_1990_p3();
    void thread_tmp_864_fu_2027_p3();
    void thread_tmp_865_fu_2050_p3();
    void thread_tmp_866_fu_2087_p3();
    void thread_tmp_867_fu_2110_p3();
    void thread_tmp_894_i_fu_2222_p2();
    void thread_tmp_895_i_fu_2228_p2();
    void thread_tmp_896_i_fu_2233_p2();
    void thread_tmp_fu_1457_p2();
    void thread_tmp_i1_fu_2168_p1();
    void thread_tmp_i_fu_2216_p1();
    void thread_tmp_i_i_fu_2185_p1();
    void thread_tmp_s_fu_1943_p2();
    void thread_v_v_address0();
    void thread_v_v_ce0();
    void thread_v_v_ce1();
    void thread_v_v_d0();
    void thread_v_v_we0();
    void thread_v_v_we1();
    void thread_x_10_fu_2035_p2();
    void thread_x_11_fu_2072_p2();
    void thread_x_12_fu_2095_p2();
    void thread_x_13_fu_2132_p2();
    void thread_x_8_fu_1974_p2();
    void thread_x_9_fu_2012_p2();
    void thread_x_fu_1950_p2();
    void thread_y_12_cast_fu_2077_p1();
    void thread_y_15_cast_fu_2100_p1();
    void thread_y_18_cast_fu_2137_p1();
    void thread_y_1_fu_1984_p2();
    void thread_y_2_fu_2021_p2();
    void thread_y_3_cast_fu_1980_p1();
    void thread_y_3_fu_2044_p2();
    void thread_y_4_fu_2081_p2();
    void thread_y_5_fu_2104_p2();
    void thread_y_6_cast_fu_2017_p1();
    void thread_y_6_fu_2141_p2();
    void thread_y_9_cast_fu_2040_p1();
    void thread_y_cast_fu_1956_p1();
    void thread_y_fu_1960_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif