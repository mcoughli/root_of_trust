// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ge_p1p1_to_p2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        p_read7,
        p_read8,
        p_read9,
        p_read10,
        p_read11,
        p_read12,
        p_read13,
        p_read14,
        p_read15,
        p_read16,
        p_read17,
        p_read18,
        p_read19,
        p_read20,
        p_read21,
        p_read22,
        p_read23,
        p_read24,
        p_read25,
        p_read26,
        p_read27,
        p_read28,
        p_read29,
        p_read30,
        p_read31,
        p_read32,
        p_read33,
        p_read34,
        p_read35,
        p_read36,
        p_read37,
        p_read38,
        p_read39,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8,
        ap_return_9,
        ap_return_10,
        ap_return_11,
        ap_return_12,
        ap_return_13,
        ap_return_14,
        ap_return_15,
        ap_return_16,
        ap_return_17,
        ap_return_18,
        ap_return_19,
        ap_return_20,
        ap_return_21,
        ap_return_22,
        ap_return_23,
        ap_return_24,
        ap_return_25,
        ap_return_26,
        ap_return_27,
        ap_return_28,
        ap_return_29
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] p_read;
input  [31:0] p_read1;
input  [31:0] p_read2;
input  [31:0] p_read3;
input  [31:0] p_read4;
input  [31:0] p_read5;
input  [31:0] p_read6;
input  [31:0] p_read7;
input  [31:0] p_read8;
input  [31:0] p_read9;
input  [31:0] p_read10;
input  [31:0] p_read11;
input  [31:0] p_read12;
input  [31:0] p_read13;
input  [31:0] p_read14;
input  [31:0] p_read15;
input  [31:0] p_read16;
input  [31:0] p_read17;
input  [31:0] p_read18;
input  [31:0] p_read19;
input  [31:0] p_read20;
input  [31:0] p_read21;
input  [31:0] p_read22;
input  [31:0] p_read23;
input  [31:0] p_read24;
input  [31:0] p_read25;
input  [31:0] p_read26;
input  [31:0] p_read27;
input  [31:0] p_read28;
input  [31:0] p_read29;
input  [31:0] p_read30;
input  [31:0] p_read31;
input  [31:0] p_read32;
input  [31:0] p_read33;
input  [31:0] p_read34;
input  [31:0] p_read35;
input  [31:0] p_read36;
input  [31:0] p_read37;
input  [31:0] p_read38;
input  [31:0] p_read39;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;
output  [31:0] ap_return_3;
output  [31:0] ap_return_4;
output  [31:0] ap_return_5;
output  [31:0] ap_return_6;
output  [31:0] ap_return_7;
output  [31:0] ap_return_8;
output  [31:0] ap_return_9;
output  [31:0] ap_return_10;
output  [31:0] ap_return_11;
output  [31:0] ap_return_12;
output  [31:0] ap_return_13;
output  [31:0] ap_return_14;
output  [31:0] ap_return_15;
output  [31:0] ap_return_16;
output  [31:0] ap_return_17;
output  [31:0] ap_return_18;
output  [31:0] ap_return_19;
output  [31:0] ap_return_20;
output  [31:0] ap_return_21;
output  [31:0] ap_return_22;
output  [31:0] ap_return_23;
output  [31:0] ap_return_24;
output  [31:0] ap_return_25;
output  [31:0] ap_return_26;
output  [31:0] ap_return_27;
output  [31:0] ap_return_28;
output  [31:0] ap_return_29;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] ap_return_0;
reg[31:0] ap_return_1;
reg[31:0] ap_return_2;
reg[31:0] ap_return_3;
reg[31:0] ap_return_4;
reg[31:0] ap_return_5;
reg[31:0] ap_return_6;
reg[31:0] ap_return_7;
reg[31:0] ap_return_8;
reg[31:0] ap_return_9;
reg[31:0] ap_return_10;
reg[31:0] ap_return_11;
reg[31:0] ap_return_12;
reg[31:0] ap_return_13;
reg[31:0] ap_return_14;
reg[31:0] ap_return_15;
reg[31:0] ap_return_16;
reg[31:0] ap_return_17;
reg[31:0] ap_return_18;
reg[31:0] ap_return_19;
reg[31:0] ap_return_20;
reg[31:0] ap_return_21;
reg[31:0] ap_return_22;
reg[31:0] ap_return_23;
reg[31:0] ap_return_24;
reg[31:0] ap_return_25;
reg[31:0] ap_return_26;
reg[31:0] ap_return_27;
reg[31:0] ap_return_28;
reg[31:0] ap_return_29;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state2;
wire    grp_fe_mul_fu_348_ap_done;
reg   [31:0] r_X_reg_895;
reg   [31:0] r_X_1_reg_900;
reg   [31:0] r_X_2_reg_905;
reg   [31:0] r_X_3_reg_910;
reg   [31:0] r_X_4_reg_915;
reg   [31:0] r_X_5_reg_920;
reg   [31:0] r_X_6_reg_925;
reg   [31:0] r_X_7_reg_930;
reg   [31:0] r_X_8_reg_935;
reg   [31:0] r_X_9_reg_940;
reg   [31:0] r_Y_reg_945;
wire    ap_CS_fsm_state3;
reg   [31:0] r_Y_1_reg_950;
reg   [31:0] r_Y_2_reg_955;
reg   [31:0] r_Y_3_reg_960;
reg   [31:0] r_Y_4_reg_965;
reg   [31:0] r_Y_5_reg_970;
reg   [31:0] r_Y_6_reg_975;
reg   [31:0] r_Y_7_reg_980;
reg   [31:0] r_Y_8_reg_985;
reg   [31:0] r_Y_9_reg_990;
wire    grp_fe_mul_fu_348_ap_start;
wire    grp_fe_mul_fu_348_ap_idle;
wire    grp_fe_mul_fu_348_ap_ready;
reg   [31:0] grp_fe_mul_fu_348_f_0_read;
reg   [31:0] grp_fe_mul_fu_348_f_1_read;
reg   [31:0] grp_fe_mul_fu_348_f_2_read;
reg   [31:0] grp_fe_mul_fu_348_f_3_read;
reg   [31:0] grp_fe_mul_fu_348_f_4_read;
reg   [31:0] grp_fe_mul_fu_348_f_5_read;
reg   [31:0] grp_fe_mul_fu_348_f_6_read;
reg   [31:0] grp_fe_mul_fu_348_f_7_read;
reg   [31:0] grp_fe_mul_fu_348_f_8_read;
reg   [31:0] grp_fe_mul_fu_348_f_9_read;
reg   [31:0] grp_fe_mul_fu_348_g_0_read;
reg   [31:0] grp_fe_mul_fu_348_g_1_read;
reg   [31:0] grp_fe_mul_fu_348_g_2_read;
reg   [31:0] grp_fe_mul_fu_348_g_3_read;
reg   [31:0] grp_fe_mul_fu_348_g_4_read;
reg   [31:0] grp_fe_mul_fu_348_g_5_read;
reg   [31:0] grp_fe_mul_fu_348_g_6_read;
reg   [31:0] grp_fe_mul_fu_348_g_7_read;
reg   [31:0] grp_fe_mul_fu_348_g_8_read;
reg   [31:0] grp_fe_mul_fu_348_g_9_read;
wire   [31:0] grp_fe_mul_fu_348_ap_return_0;
wire   [31:0] grp_fe_mul_fu_348_ap_return_1;
wire   [31:0] grp_fe_mul_fu_348_ap_return_2;
wire   [31:0] grp_fe_mul_fu_348_ap_return_3;
wire   [31:0] grp_fe_mul_fu_348_ap_return_4;
wire   [31:0] grp_fe_mul_fu_348_ap_return_5;
wire   [31:0] grp_fe_mul_fu_348_ap_return_6;
wire   [31:0] grp_fe_mul_fu_348_ap_return_7;
wire   [31:0] grp_fe_mul_fu_348_ap_return_8;
wire   [31:0] grp_fe_mul_fu_348_ap_return_9;
reg    ap_reg_grp_fe_mul_fu_348_ap_start;
wire    ap_CS_fsm_state4;
reg   [31:0] ap_return_0_preg;
reg   [31:0] ap_return_1_preg;
reg   [31:0] ap_return_2_preg;
reg   [31:0] ap_return_3_preg;
reg   [31:0] ap_return_4_preg;
reg   [31:0] ap_return_5_preg;
reg   [31:0] ap_return_6_preg;
reg   [31:0] ap_return_7_preg;
reg   [31:0] ap_return_8_preg;
reg   [31:0] ap_return_9_preg;
reg   [31:0] ap_return_10_preg;
reg   [31:0] ap_return_11_preg;
reg   [31:0] ap_return_12_preg;
reg   [31:0] ap_return_13_preg;
reg   [31:0] ap_return_14_preg;
reg   [31:0] ap_return_15_preg;
reg   [31:0] ap_return_16_preg;
reg   [31:0] ap_return_17_preg;
reg   [31:0] ap_return_18_preg;
reg   [31:0] ap_return_19_preg;
reg   [31:0] ap_return_20_preg;
reg   [31:0] ap_return_21_preg;
reg   [31:0] ap_return_22_preg;
reg   [31:0] ap_return_23_preg;
reg   [31:0] ap_return_24_preg;
reg   [31:0] ap_return_25_preg;
reg   [31:0] ap_return_26_preg;
reg   [31:0] ap_return_27_preg;
reg   [31:0] ap_return_28_preg;
reg   [31:0] ap_return_29_preg;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_reg_grp_fe_mul_fu_348_ap_start = 1'b0;
#0 ap_return_0_preg = 32'd0;
#0 ap_return_1_preg = 32'd0;
#0 ap_return_2_preg = 32'd0;
#0 ap_return_3_preg = 32'd0;
#0 ap_return_4_preg = 32'd0;
#0 ap_return_5_preg = 32'd0;
#0 ap_return_6_preg = 32'd0;
#0 ap_return_7_preg = 32'd0;
#0 ap_return_8_preg = 32'd0;
#0 ap_return_9_preg = 32'd0;
#0 ap_return_10_preg = 32'd0;
#0 ap_return_11_preg = 32'd0;
#0 ap_return_12_preg = 32'd0;
#0 ap_return_13_preg = 32'd0;
#0 ap_return_14_preg = 32'd0;
#0 ap_return_15_preg = 32'd0;
#0 ap_return_16_preg = 32'd0;
#0 ap_return_17_preg = 32'd0;
#0 ap_return_18_preg = 32'd0;
#0 ap_return_19_preg = 32'd0;
#0 ap_return_20_preg = 32'd0;
#0 ap_return_21_preg = 32'd0;
#0 ap_return_22_preg = 32'd0;
#0 ap_return_23_preg = 32'd0;
#0 ap_return_24_preg = 32'd0;
#0 ap_return_25_preg = 32'd0;
#0 ap_return_26_preg = 32'd0;
#0 ap_return_27_preg = 32'd0;
#0 ap_return_28_preg = 32'd0;
#0 ap_return_29_preg = 32'd0;
end

fe_mul grp_fe_mul_fu_348(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_fe_mul_fu_348_ap_start),
    .ap_done(grp_fe_mul_fu_348_ap_done),
    .ap_idle(grp_fe_mul_fu_348_ap_idle),
    .ap_ready(grp_fe_mul_fu_348_ap_ready),
    .f_0_read(grp_fe_mul_fu_348_f_0_read),
    .f_1_read(grp_fe_mul_fu_348_f_1_read),
    .f_2_read(grp_fe_mul_fu_348_f_2_read),
    .f_3_read(grp_fe_mul_fu_348_f_3_read),
    .f_4_read(grp_fe_mul_fu_348_f_4_read),
    .f_5_read(grp_fe_mul_fu_348_f_5_read),
    .f_6_read(grp_fe_mul_fu_348_f_6_read),
    .f_7_read(grp_fe_mul_fu_348_f_7_read),
    .f_8_read(grp_fe_mul_fu_348_f_8_read),
    .f_9_read(grp_fe_mul_fu_348_f_9_read),
    .g_0_read(grp_fe_mul_fu_348_g_0_read),
    .g_1_read(grp_fe_mul_fu_348_g_1_read),
    .g_2_read(grp_fe_mul_fu_348_g_2_read),
    .g_3_read(grp_fe_mul_fu_348_g_3_read),
    .g_4_read(grp_fe_mul_fu_348_g_4_read),
    .g_5_read(grp_fe_mul_fu_348_g_5_read),
    .g_6_read(grp_fe_mul_fu_348_g_6_read),
    .g_7_read(grp_fe_mul_fu_348_g_7_read),
    .g_8_read(grp_fe_mul_fu_348_g_8_read),
    .g_9_read(grp_fe_mul_fu_348_g_9_read),
    .ap_return_0(grp_fe_mul_fu_348_ap_return_0),
    .ap_return_1(grp_fe_mul_fu_348_ap_return_1),
    .ap_return_2(grp_fe_mul_fu_348_ap_return_2),
    .ap_return_3(grp_fe_mul_fu_348_ap_return_3),
    .ap_return_4(grp_fe_mul_fu_348_ap_return_4),
    .ap_return_5(grp_fe_mul_fu_348_ap_return_5),
    .ap_return_6(grp_fe_mul_fu_348_ap_return_6),
    .ap_return_7(grp_fe_mul_fu_348_ap_return_7),
    .ap_return_8(grp_fe_mul_fu_348_ap_return_8),
    .ap_return_9(grp_fe_mul_fu_348_ap_return_9)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_fe_mul_fu_348_ap_start <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'b1 == ap_CS_fsm_state2) & (grp_fe_mul_fu_348_ap_done == 1'b1)) | ((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
            ap_reg_grp_fe_mul_fu_348_ap_start <= 1'b1;
        end else if ((1'b1 == grp_fe_mul_fu_348_ap_ready)) begin
            ap_reg_grp_fe_mul_fu_348_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_0_preg <= r_X_reg_895;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_10_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_10_preg <= r_Y_reg_945;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_11_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_11_preg <= r_Y_1_reg_950;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_12_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_12_preg <= r_Y_2_reg_955;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_13_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_13_preg <= r_Y_3_reg_960;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_14_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_14_preg <= r_Y_4_reg_965;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_15_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_15_preg <= r_Y_5_reg_970;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_16_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_16_preg <= r_Y_6_reg_975;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_17_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_17_preg <= r_Y_7_reg_980;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_18_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_18_preg <= r_Y_8_reg_985;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_19_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_19_preg <= r_Y_9_reg_990;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_1_preg <= r_X_1_reg_900;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_20_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_20_preg <= grp_fe_mul_fu_348_ap_return_0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_21_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_21_preg <= grp_fe_mul_fu_348_ap_return_1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_22_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_22_preg <= grp_fe_mul_fu_348_ap_return_2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_23_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_23_preg <= grp_fe_mul_fu_348_ap_return_3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_24_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_24_preg <= grp_fe_mul_fu_348_ap_return_4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_25_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_25_preg <= grp_fe_mul_fu_348_ap_return_5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_26_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_26_preg <= grp_fe_mul_fu_348_ap_return_6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_27_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_27_preg <= grp_fe_mul_fu_348_ap_return_7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_28_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_28_preg <= grp_fe_mul_fu_348_ap_return_8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_29_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_29_preg <= grp_fe_mul_fu_348_ap_return_9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_2_preg <= r_X_2_reg_905;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_3_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_3_preg <= r_X_3_reg_910;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_4_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_4_preg <= r_X_4_reg_915;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_5_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_5_preg <= r_X_5_reg_920;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_6_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_6_preg <= r_X_6_reg_925;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_7_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_7_preg <= r_X_7_reg_930;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_8_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_8_preg <= r_X_8_reg_935;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_9_preg <= 32'd0;
    end else begin
        if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_return_9_preg <= r_X_9_reg_940;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_fe_mul_fu_348_ap_done == 1'b1))) begin
        r_X_1_reg_900 <= grp_fe_mul_fu_348_ap_return_1;
        r_X_2_reg_905 <= grp_fe_mul_fu_348_ap_return_2;
        r_X_3_reg_910 <= grp_fe_mul_fu_348_ap_return_3;
        r_X_4_reg_915 <= grp_fe_mul_fu_348_ap_return_4;
        r_X_5_reg_920 <= grp_fe_mul_fu_348_ap_return_5;
        r_X_6_reg_925 <= grp_fe_mul_fu_348_ap_return_6;
        r_X_7_reg_930 <= grp_fe_mul_fu_348_ap_return_7;
        r_X_8_reg_935 <= grp_fe_mul_fu_348_ap_return_8;
        r_X_9_reg_940 <= grp_fe_mul_fu_348_ap_return_9;
        r_X_reg_895 <= grp_fe_mul_fu_348_ap_return_0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        r_Y_1_reg_950 <= grp_fe_mul_fu_348_ap_return_1;
        r_Y_2_reg_955 <= grp_fe_mul_fu_348_ap_return_2;
        r_Y_3_reg_960 <= grp_fe_mul_fu_348_ap_return_3;
        r_Y_4_reg_965 <= grp_fe_mul_fu_348_ap_return_4;
        r_Y_5_reg_970 <= grp_fe_mul_fu_348_ap_return_5;
        r_Y_6_reg_975 <= grp_fe_mul_fu_348_ap_return_6;
        r_Y_7_reg_980 <= grp_fe_mul_fu_348_ap_return_7;
        r_Y_8_reg_985 <= grp_fe_mul_fu_348_ap_return_8;
        r_Y_9_reg_990 <= grp_fe_mul_fu_348_ap_return_9;
        r_Y_reg_945 <= grp_fe_mul_fu_348_ap_return_0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_0 = r_X_reg_895;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_1 = r_X_1_reg_900;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_10 = r_Y_reg_945;
    end else begin
        ap_return_10 = ap_return_10_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_11 = r_Y_1_reg_950;
    end else begin
        ap_return_11 = ap_return_11_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_12 = r_Y_2_reg_955;
    end else begin
        ap_return_12 = ap_return_12_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_13 = r_Y_3_reg_960;
    end else begin
        ap_return_13 = ap_return_13_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_14 = r_Y_4_reg_965;
    end else begin
        ap_return_14 = ap_return_14_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_15 = r_Y_5_reg_970;
    end else begin
        ap_return_15 = ap_return_15_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_16 = r_Y_6_reg_975;
    end else begin
        ap_return_16 = ap_return_16_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_17 = r_Y_7_reg_980;
    end else begin
        ap_return_17 = ap_return_17_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_18 = r_Y_8_reg_985;
    end else begin
        ap_return_18 = ap_return_18_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_19 = r_Y_9_reg_990;
    end else begin
        ap_return_19 = ap_return_19_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_2 = r_X_2_reg_905;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_20 = grp_fe_mul_fu_348_ap_return_0;
    end else begin
        ap_return_20 = ap_return_20_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_21 = grp_fe_mul_fu_348_ap_return_1;
    end else begin
        ap_return_21 = ap_return_21_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_22 = grp_fe_mul_fu_348_ap_return_2;
    end else begin
        ap_return_22 = ap_return_22_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_23 = grp_fe_mul_fu_348_ap_return_3;
    end else begin
        ap_return_23 = ap_return_23_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_24 = grp_fe_mul_fu_348_ap_return_4;
    end else begin
        ap_return_24 = ap_return_24_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_25 = grp_fe_mul_fu_348_ap_return_5;
    end else begin
        ap_return_25 = ap_return_25_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_26 = grp_fe_mul_fu_348_ap_return_6;
    end else begin
        ap_return_26 = ap_return_26_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_27 = grp_fe_mul_fu_348_ap_return_7;
    end else begin
        ap_return_27 = ap_return_27_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_28 = grp_fe_mul_fu_348_ap_return_8;
    end else begin
        ap_return_28 = ap_return_28_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_29 = grp_fe_mul_fu_348_ap_return_9;
    end else begin
        ap_return_29 = ap_return_29_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_3 = r_X_3_reg_910;
    end else begin
        ap_return_3 = ap_return_3_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_4 = r_X_4_reg_915;
    end else begin
        ap_return_4 = ap_return_4_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_5 = r_X_5_reg_920;
    end else begin
        ap_return_5 = ap_return_5_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_6 = r_X_6_reg_925;
    end else begin
        ap_return_6 = ap_return_6_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_7 = r_X_7_reg_930;
    end else begin
        ap_return_7 = ap_return_7_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_8 = r_X_8_reg_935;
    end else begin
        ap_return_8 = ap_return_8_preg;
    end
end

always @ (*) begin
    if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_return_9 = r_X_9_reg_940;
    end else begin
        ap_return_9 = ap_return_9_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fe_mul_fu_348_f_0_read = p_read20;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_f_0_read = p_read10;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fe_mul_fu_348_f_0_read = p_read;
    end else begin
        grp_fe_mul_fu_348_f_0_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fe_mul_fu_348_f_1_read = p_read21;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_f_1_read = p_read11;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fe_mul_fu_348_f_1_read = p_read1;
    end else begin
        grp_fe_mul_fu_348_f_1_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fe_mul_fu_348_f_2_read = p_read22;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_f_2_read = p_read12;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fe_mul_fu_348_f_2_read = p_read2;
    end else begin
        grp_fe_mul_fu_348_f_2_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fe_mul_fu_348_f_3_read = p_read23;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_f_3_read = p_read13;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fe_mul_fu_348_f_3_read = p_read3;
    end else begin
        grp_fe_mul_fu_348_f_3_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fe_mul_fu_348_f_4_read = p_read24;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_f_4_read = p_read14;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fe_mul_fu_348_f_4_read = p_read4;
    end else begin
        grp_fe_mul_fu_348_f_4_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fe_mul_fu_348_f_5_read = p_read25;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_f_5_read = p_read15;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fe_mul_fu_348_f_5_read = p_read5;
    end else begin
        grp_fe_mul_fu_348_f_5_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fe_mul_fu_348_f_6_read = p_read26;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_f_6_read = p_read16;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fe_mul_fu_348_f_6_read = p_read6;
    end else begin
        grp_fe_mul_fu_348_f_6_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fe_mul_fu_348_f_7_read = p_read27;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_f_7_read = p_read17;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fe_mul_fu_348_f_7_read = p_read7;
    end else begin
        grp_fe_mul_fu_348_f_7_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fe_mul_fu_348_f_8_read = p_read28;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_f_8_read = p_read18;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fe_mul_fu_348_f_8_read = p_read8;
    end else begin
        grp_fe_mul_fu_348_f_8_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fe_mul_fu_348_f_9_read = p_read29;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_f_9_read = p_read19;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fe_mul_fu_348_f_9_read = p_read9;
    end else begin
        grp_fe_mul_fu_348_f_9_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_g_0_read = p_read20;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fe_mul_fu_348_g_0_read = p_read30;
    end else begin
        grp_fe_mul_fu_348_g_0_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_g_1_read = p_read21;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fe_mul_fu_348_g_1_read = p_read31;
    end else begin
        grp_fe_mul_fu_348_g_1_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_g_2_read = p_read22;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fe_mul_fu_348_g_2_read = p_read32;
    end else begin
        grp_fe_mul_fu_348_g_2_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_g_3_read = p_read23;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fe_mul_fu_348_g_3_read = p_read33;
    end else begin
        grp_fe_mul_fu_348_g_3_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_g_4_read = p_read24;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fe_mul_fu_348_g_4_read = p_read34;
    end else begin
        grp_fe_mul_fu_348_g_4_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_g_5_read = p_read25;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fe_mul_fu_348_g_5_read = p_read35;
    end else begin
        grp_fe_mul_fu_348_g_5_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_g_6_read = p_read26;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fe_mul_fu_348_g_6_read = p_read36;
    end else begin
        grp_fe_mul_fu_348_g_6_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_g_7_read = p_read27;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fe_mul_fu_348_g_7_read = p_read37;
    end else begin
        grp_fe_mul_fu_348_g_7_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_g_8_read = p_read28;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fe_mul_fu_348_g_8_read = p_read38;
    end else begin
        grp_fe_mul_fu_348_g_8_read = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fe_mul_fu_348_g_9_read = p_read29;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fe_mul_fu_348_g_9_read = p_read39;
    end else begin
        grp_fe_mul_fu_348_g_9_read = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_fe_mul_fu_348_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_fe_mul_fu_348_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign grp_fe_mul_fu_348_ap_start = ap_reg_grp_fe_mul_fu_348_ap_start;

endmodule //ge_p1p1_to_p2
