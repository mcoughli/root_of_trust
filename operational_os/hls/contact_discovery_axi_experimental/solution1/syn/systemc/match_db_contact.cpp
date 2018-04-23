// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "match_db_contact.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic match_db_contact::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic match_db_contact::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> match_db_contact::ap_ST_fsm_state1 = "1";
const sc_lv<3> match_db_contact::ap_ST_fsm_state2 = "10";
const sc_lv<3> match_db_contact::ap_ST_fsm_state3 = "100";
const sc_lv<32> match_db_contact::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> match_db_contact::ap_const_lv32_1 = "1";
const sc_lv<1> match_db_contact::ap_const_lv1_0 = "0";
const sc_lv<32> match_db_contact::ap_const_lv32_2 = "10";
const sc_lv<8> match_db_contact::ap_const_lv8_0 = "00000000";
const sc_lv<8> match_db_contact::ap_const_lv8_80 = "10000000";
const sc_lv<8> match_db_contact::ap_const_lv8_1 = "1";
const sc_lv<1> match_db_contact::ap_const_lv1_1 = "1";
const bool match_db_contact::ap_const_boolean_1 = true;

match_db_contact::match_db_contact(sc_module_name name) : sc_module(name), mVcdFile(0) {

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
    sensitive << ( exitcond_fu_61_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_61_p2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_61_p2 );
    sensitive << ( matched_reg_49 );
    sensitive << ( ap_return_preg );

    SC_METHOD(thread_contacts_V_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_73_p1 );

    SC_METHOD(thread_contacts_V_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_contacts_index_1_fu_67_p2);
    sensitive << ( contacts_index_reg_38 );

    SC_METHOD(thread_exitcond_fu_61_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( contacts_index_reg_38 );

    SC_METHOD(thread_matched_1_fu_83_p2);
    sensitive << ( matched_reg_49 );
    sensitive << ( tmp_1_fu_78_p2 );

    SC_METHOD(thread_tmp_1_fu_78_p2);
    sensitive << ( db_item_V );
    sensitive << ( contacts_V_q0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_fu_73_p1);
    sensitive << ( contacts_index_reg_38 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond_fu_61_p2 );

    ap_CS_fsm = "001";
    ap_return_preg = "0";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "match_db_contact_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, db_item_V, "(port)db_item_V");
    sc_trace(mVcdFile, contacts_V_address0, "(port)contacts_V_address0");
    sc_trace(mVcdFile, contacts_V_ce0, "(port)contacts_V_ce0");
    sc_trace(mVcdFile, contacts_V_q0, "(port)contacts_V_q0");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, contacts_index_1_fu_67_p2, "contacts_index_1_fu_67_p2");
    sc_trace(mVcdFile, contacts_index_1_reg_97, "contacts_index_1_reg_97");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, exitcond_fu_61_p2, "exitcond_fu_61_p2");
    sc_trace(mVcdFile, matched_1_fu_83_p2, "matched_1_fu_83_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, contacts_index_reg_38, "contacts_index_reg_38");
    sc_trace(mVcdFile, matched_reg_49, "matched_reg_49");
    sc_trace(mVcdFile, tmp_fu_73_p1, "tmp_fu_73_p1");
    sc_trace(mVcdFile, tmp_1_fu_78_p2, "tmp_1_fu_78_p2");
    sc_trace(mVcdFile, ap_return_preg, "ap_return_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

match_db_contact::~match_db_contact() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void match_db_contact::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_preg = ap_const_lv1_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
             esl_seteq<1,1,1>(exitcond_fu_61_p2.read(), ap_const_lv1_1))) {
            ap_return_preg = matched_reg_49.read();
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        contacts_index_reg_38 = contacts_index_1_reg_97.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        contacts_index_reg_38 = ap_const_lv8_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        matched_reg_49 = matched_1_fu_83_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        matched_reg_49 = ap_const_lv1_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        contacts_index_1_reg_97 = contacts_index_1_fu_67_p2.read();
    }
}

void match_db_contact::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void match_db_contact::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void match_db_contact::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void match_db_contact::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(exitcond_fu_61_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void match_db_contact::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void match_db_contact::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_61_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void match_db_contact::thread_ap_return() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_61_p2.read(), ap_const_lv1_1))) {
        ap_return = matched_reg_49.read();
    } else {
        ap_return = ap_return_preg.read();
    }
}

void match_db_contact::thread_contacts_V_address0() {
    contacts_V_address0 =  (sc_lv<7>) (tmp_fu_73_p1.read());
}

void match_db_contact::thread_contacts_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        contacts_V_ce0 = ap_const_logic_1;
    } else {
        contacts_V_ce0 = ap_const_logic_0;
    }
}

void match_db_contact::thread_contacts_index_1_fu_67_p2() {
    contacts_index_1_fu_67_p2 = (!contacts_index_reg_38.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_biguint<8>(contacts_index_reg_38.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void match_db_contact::thread_exitcond_fu_61_p2() {
    exitcond_fu_61_p2 = (!contacts_index_reg_38.read().is_01() || !ap_const_lv8_80.is_01())? sc_lv<1>(): sc_lv<1>(contacts_index_reg_38.read() == ap_const_lv8_80);
}

void match_db_contact::thread_matched_1_fu_83_p2() {
    matched_1_fu_83_p2 = (tmp_1_fu_78_p2.read() | matched_reg_49.read());
}

void match_db_contact::thread_tmp_1_fu_78_p2() {
    tmp_1_fu_78_p2 = (!contacts_V_q0.read().is_01() || !db_item_V.read().is_01())? sc_lv<1>(): sc_lv<1>(contacts_V_q0.read() == db_item_V.read());
}

void match_db_contact::thread_tmp_fu_73_p1() {
    tmp_fu_73_p1 = esl_zext<64,8>(contacts_index_reg_38.read());
}

void match_db_contact::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(exitcond_fu_61_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}

