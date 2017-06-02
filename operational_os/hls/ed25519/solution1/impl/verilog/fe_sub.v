// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fe_sub (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        f_0_read,
        f_1_read,
        f_2_read,
        f_3_read,
        f_4_read,
        f_5_read,
        f_6_read,
        f_7_read,
        f_8_read,
        f_9_read,
        g_0_read,
        g_1_read,
        g_2_read,
        g_3_read,
        g_4_read,
        g_5_read,
        g_6_read,
        g_7_read,
        g_8_read,
        g_9_read,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8,
        ap_return_9
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] f_0_read;
input  [31:0] f_1_read;
input  [31:0] f_2_read;
input  [31:0] f_3_read;
input  [31:0] f_4_read;
input  [31:0] f_5_read;
input  [31:0] f_6_read;
input  [31:0] f_7_read;
input  [31:0] f_8_read;
input  [31:0] f_9_read;
input  [31:0] g_0_read;
input  [31:0] g_1_read;
input  [31:0] g_2_read;
input  [31:0] g_3_read;
input  [31:0] g_4_read;
input  [31:0] g_5_read;
input  [31:0] g_6_read;
input  [31:0] g_7_read;
input  [31:0] g_8_read;
input  [31:0] g_9_read;
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

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] grp_fu_184_p2;
reg   [31:0] h0_reg_195;
reg   [31:0] h1_reg_203;
wire    ap_CS_fsm_state2;
reg   [31:0] h2_reg_211;
wire    ap_CS_fsm_state3;
reg   [31:0] h3_reg_219;
wire    ap_CS_fsm_state4;
reg   [31:0] h4_reg_227;
wire    ap_CS_fsm_state5;
reg   [31:0] h5_reg_235;
wire    ap_CS_fsm_state6;
reg   [31:0] h6_reg_243;
wire    ap_CS_fsm_state7;
reg   [31:0] h7_reg_251;
wire    ap_CS_fsm_state8;
reg   [31:0] h8_reg_259;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg   [31:0] grp_fu_184_p0;
reg   [31:0] grp_fu_184_p1;
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
reg   [9:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
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
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_0_preg <= h0_reg_195;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_1_preg <= h1_reg_203;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_2_preg <= h2_reg_211;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_3_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_3_preg <= h3_reg_219;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_4_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_4_preg <= h4_reg_227;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_5_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_5_preg <= h5_reg_235;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_6_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_6_preg <= h6_reg_243;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_7_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_7_preg <= h7_reg_251;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_8_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_8_preg <= h8_reg_259;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_9_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_return_9_preg <= grp_fu_184_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        h0_reg_195 <= grp_fu_184_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        h1_reg_203 <= grp_fu_184_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        h2_reg_211 <= grp_fu_184_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        h3_reg_219 <= grp_fu_184_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        h4_reg_227 <= grp_fu_184_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        h5_reg_235 <= grp_fu_184_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        h6_reg_243 <= grp_fu_184_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        h7_reg_251 <= grp_fu_184_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        h8_reg_259 <= grp_fu_184_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | (1'b1 == ap_CS_fsm_state10))) begin
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_return_0 = h0_reg_195;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_return_1 = h1_reg_203;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_return_2 = h2_reg_211;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_return_3 = h3_reg_219;
    end else begin
        ap_return_3 = ap_return_3_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_return_4 = h4_reg_227;
    end else begin
        ap_return_4 = ap_return_4_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_return_5 = h5_reg_235;
    end else begin
        ap_return_5 = ap_return_5_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_return_6 = h6_reg_243;
    end else begin
        ap_return_6 = ap_return_6_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_return_7 = h7_reg_251;
    end else begin
        ap_return_7 = ap_return_7_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_return_8 = h8_reg_259;
    end else begin
        ap_return_8 = ap_return_8_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_return_9 = grp_fu_184_p2;
    end else begin
        ap_return_9 = ap_return_9_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_184_p0 = f_9_read;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_184_p0 = f_8_read;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_184_p0 = f_7_read;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_184_p0 = f_6_read;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_184_p0 = f_5_read;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_184_p0 = f_4_read;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_184_p0 = f_3_read;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_184_p0 = f_2_read;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_184_p0 = f_1_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_184_p0 = f_0_read;
    end else begin
        grp_fu_184_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_184_p1 = g_9_read;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_184_p1 = g_8_read;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_184_p1 = g_7_read;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_184_p1 = g_6_read;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_184_p1 = g_5_read;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_184_p1 = g_4_read;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_184_p1 = g_3_read;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_184_p1 = g_2_read;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_184_p1 = g_1_read;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_184_p1 = g_0_read;
    end else begin
        grp_fu_184_p1 = 'bx;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_fu_184_p2 = (grp_fu_184_p0 - grp_fu_184_p1);

endmodule //fe_sub
