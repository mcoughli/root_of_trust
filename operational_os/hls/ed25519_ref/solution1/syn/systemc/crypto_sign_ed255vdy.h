// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __crypto_sign_ed255vdy_H__
#define __crypto_sign_ed255vdy_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct crypto_sign_ed255vdy_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 32;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(crypto_sign_ed255vdy_ram) {
        ram[0] = "0b00000000000000000000000001011001";
        ram[1] = "0b00000000000000000000000011110001";
        ram[2] = "0b00000000000000000000000010110010";
        ram[3] = "0b00000000000000000000000000100110";
        ram[4] = "0b00000000000000000000000010010100";
        ram[5] = "0b00000000000000000000000010011011";
        ram[6] = "0b00000000000000000000000011010110";
        ram[7] = "0b00000000000000000000000011101011";
        ram[8] = "0b00000000000000000000000001010110";
        ram[9] = "0b00000000000000000000000010110001";
        ram[10] = "0b00000000000000000000000010000011";
        ram[11] = "0b00000000000000000000000010000010";
        ram[12] = "0b00000000000000000000000010011010";
        ram[13] = "0b00000000000000000000000000010100";
        ram[14] = "0b00000000000000000000000011100000";
        ram[15] = "0b00000000000000000000000000000000";
        ram[16] = "0b00000000000000000000000000110000";
        ram[17] = "0b00000000000000000000000011010001";
        ram[18] = "0b00000000000000000000000011110011";
        ram[19] = "0b00000000000000000000000011101110";
        ram[20] = "0b00000000000000000000000011110010";
        ram[21] = "0b00000000000000000000000010000000";
        ram[22] = "0b00000000000000000000000010001110";
        ram[23] = "0b00000000000000000000000000011001";
        ram[24] = "0b00000000000000000000000011100111";
        ram[25] = "0b00000000000000000000000011111100";
        ram[26] = "0b00000000000000000000000011011111";
        ram[27] = "0b00000000000000000000000001010110";
        ram[28] = "0b00000000000000000000000011011100";
        ram[29] = "0b00000000000000000000000011011001";
        ram[30] = "0b00000000000000000000000000000110";
        ram[31] = "0b00000000000000000000000000100100";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(crypto_sign_ed255vdy) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


crypto_sign_ed255vdy_ram* meminst;


SC_CTOR(crypto_sign_ed255vdy) {
meminst = new crypto_sign_ed255vdy_ram("crypto_sign_ed255vdy_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~crypto_sign_ed255vdy() {
    delete meminst;
}


};//endmodule
#endif