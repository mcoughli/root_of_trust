// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module load_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_r_address0,
        in_r_ce0,
        in_r_q0,
        in_offset,
        ap_return
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
output  [5:0] in_r_address0;
output   in_r_ce0;
input  [7:0] in_r_q0;
input  [6:0] in_offset;
output  [23:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] in_r_address0;
reg in_r_ce0;
reg[23:0] ap_return;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] tmp_1375_fu_61_p1;
reg   [5:0] tmp_1375_reg_98;
reg   [7:0] in_load_reg_104;
wire    ap_CS_fsm_state2;
reg   [7:0] in_load_4_reg_114;
wire    ap_CS_fsm_state3;
wire   [63:0] in_offset_cast2_fu_56_p1;
wire   [63:0] sum_cast_fu_70_p1;
wire   [63:0] sum2_cast_fu_80_p1;
wire   [5:0] sum_fu_65_p2;
wire   [5:0] sum2_fu_75_p2;
wire    ap_CS_fsm_state4;
wire   [23:0] tmp_fu_85_p4;
reg   [23:0] ap_return_preg;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_return_preg = 24'd0;
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
        ap_return_preg <= 24'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_return_preg <= tmp_fu_85_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in_load_4_reg_114 <= in_r_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        in_load_reg_104 <= in_r_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_1375_reg_98 <= tmp_1375_fu_61_p1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | (1'b1 == ap_CS_fsm_state4))) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_return = tmp_fu_85_p4;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in_r_address0 = sum2_cast_fu_80_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        in_r_address0 = sum_cast_fu_70_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        in_r_address0 = in_offset_cast2_fu_56_p1;
    end else begin
        in_r_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        in_r_ce0 = 1'b1;
    end else begin
        in_r_ce0 = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state1;
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

assign in_offset_cast2_fu_56_p1 = in_offset;

assign sum2_cast_fu_80_p1 = sum2_fu_75_p2;

assign sum2_fu_75_p2 = (6'd2 + tmp_1375_reg_98);

assign sum_cast_fu_70_p1 = sum_fu_65_p2;

assign sum_fu_65_p2 = (6'd1 + tmp_1375_reg_98);

assign tmp_1375_fu_61_p1 = in_offset[5:0];

assign tmp_fu_85_p4 = {{{in_r_q0}, {in_load_4_reg_114}}, {in_load_reg_104}};

endmodule //load_3