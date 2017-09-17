// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _fe_copy_HH_
#define _fe_copy_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct fe_copy : public sc_module {
    // Port declarations 20
    sc_in< sc_lv<32> > f_0_read;
    sc_in< sc_lv<32> > f_1_read;
    sc_in< sc_lv<32> > f_2_read;
    sc_in< sc_lv<32> > f_3_read;
    sc_in< sc_lv<32> > f_4_read;
    sc_in< sc_lv<32> > f_5_read;
    sc_in< sc_lv<32> > f_6_read;
    sc_in< sc_lv<32> > f_7_read;
    sc_in< sc_lv<32> > f_8_read;
    sc_in< sc_lv<32> > f_9_read;
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
    fe_copy(sc_module_name name);
    SC_HAS_PROCESS(fe_copy);

    ~fe_copy();

    sc_trace_file* mVcdFile;

    static const bool ap_const_boolean_1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
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
};

}

using namespace ap_rtl;

#endif