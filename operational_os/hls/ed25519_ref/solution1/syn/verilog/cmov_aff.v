// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cmov_aff (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        r_x_v_address0,
        r_x_v_ce0,
        r_x_v_we0,
        r_x_v_d0,
        r_x_v_q0,
        r_y_v_address0,
        r_y_v_ce0,
        r_y_v_we0,
        r_y_v_d0,
        r_y_v_q0,
        p_x_v_address0,
        p_x_v_ce0,
        p_x_v_q0,
        tmp_919,
        p_y_v_address0,
        p_y_v_ce0,
        p_y_v_q0,
        tmp_9191,
        b
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] r_x_v_address0;
output   r_x_v_ce0;
output   r_x_v_we0;
output  [31:0] r_x_v_d0;
input  [31:0] r_x_v_q0;
output  [4:0] r_y_v_address0;
output   r_y_v_ce0;
output   r_y_v_we0;
output  [31:0] r_y_v_d0;
input  [31:0] r_y_v_q0;
output  [13:0] p_x_v_address0;
output   p_x_v_ce0;
input  [31:0] p_x_v_q0;
input  [8:0] tmp_919;
output  [13:0] p_y_v_address0;
output   p_y_v_ce0;
input  [31:0] p_y_v_q0;
input  [8:0] tmp_9191;
input  [0:0] b;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] r_x_v_address0;
reg r_x_v_ce0;
reg r_x_v_we0;
reg[4:0] r_y_v_address0;
reg r_y_v_ce0;
reg r_y_v_we0;
reg p_x_v_ce0;
reg p_y_v_ce0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [14:0] tmp_787_cast_fu_134_p1;
reg   [14:0] tmp_787_cast_reg_256;
wire   [14:0] tmp_789_cast_fu_146_p1;
reg   [14:0] tmp_789_cast_reg_261;
wire   [31:0] mask_cast_fu_150_p3;
reg   [31:0] mask_cast_reg_266;
wire   [5:0] i_fu_164_p2;
reg   [5:0] i_reg_275;
wire    ap_CS_fsm_state2;
wire   [0:0] exitcond_i_fu_158_p2;
reg   [4:0] r_x_v_addr_reg_285;
wire   [5:0] i_81_fu_213_p2;
reg   [5:0] i_81_reg_293;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond_i6_fu_207_p2;
reg   [4:0] r_y_v_addr_reg_303;
reg   [5:0] i_i_reg_104;
wire    ap_CS_fsm_state3;
reg   [5:0] i_i5_reg_115;
wire    ap_CS_fsm_state5;
wire   [63:0] tmp_790_cast_fu_184_p1;
wire   [63:0] tmp_i_fu_170_p1;
wire   [63:0] tmp_791_cast_fu_233_p1;
wire   [63:0] tmp_i7_fu_219_p1;
wire   [13:0] tmp_fu_126_p3;
wire   [13:0] tmp_788_fu_138_p3;
wire   [14:0] tmp_i_cast_fu_175_p1;
wire   [14:0] tmp_790_fu_179_p2;
wire   [31:0] tmp_894_i_fu_189_p2;
wire   [31:0] tmp_895_i_fu_195_p2;
wire   [14:0] tmp_i7_cast_fu_224_p1;
wire   [14:0] tmp_791_fu_228_p2;
wire   [31:0] tmp_894_i1_fu_238_p2;
wire   [31:0] tmp_895_i1_fu_244_p2;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond_i_fu_158_p2 == 1'd1))) begin
        i_i5_reg_115 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_i5_reg_115 <= i_81_reg_293;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_i_reg_104 <= i_reg_275;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_i_reg_104 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_81_reg_293 <= i_81_fu_213_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_275 <= i_fu_164_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        mask_cast_reg_266 <= mask_cast_fu_150_p3;
        tmp_787_cast_reg_256[13 : 5] <= tmp_787_cast_fu_134_p1[13 : 5];
        tmp_789_cast_reg_261[13 : 5] <= tmp_789_cast_fu_146_p1[13 : 5];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond_i_fu_158_p2 == 1'd0))) begin
        r_x_v_addr_reg_285 <= tmp_i_fu_170_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == exitcond_i6_fu_207_p2))) begin
        r_y_v_addr_reg_303 <= tmp_i7_fu_219_p1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state4) & (exitcond_i6_fu_207_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_i6_fu_207_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_x_v_ce0 = 1'b1;
    end else begin
        p_x_v_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_y_v_ce0 = 1'b1;
    end else begin
        p_y_v_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        r_x_v_address0 = r_x_v_addr_reg_285;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        r_x_v_address0 = tmp_i_fu_170_p1;
    end else begin
        r_x_v_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        r_x_v_ce0 = 1'b1;
    end else begin
        r_x_v_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        r_x_v_we0 = 1'b1;
    end else begin
        r_x_v_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        r_y_v_address0 = r_y_v_addr_reg_303;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        r_y_v_address0 = tmp_i7_fu_219_p1;
    end else begin
        r_y_v_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5))) begin
        r_y_v_ce0 = 1'b1;
    end else begin
        r_y_v_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        r_y_v_we0 = 1'b1;
    end else begin
        r_y_v_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond_i_fu_158_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond_i6_fu_207_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
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

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign exitcond_i6_fu_207_p2 = ((i_i5_reg_115 == 6'd32) ? 1'b1 : 1'b0);

assign exitcond_i_fu_158_p2 = ((i_i_reg_104 == 6'd32) ? 1'b1 : 1'b0);

assign i_81_fu_213_p2 = (i_i5_reg_115 + 6'd1);

assign i_fu_164_p2 = (i_i_reg_104 + 6'd1);

assign mask_cast_fu_150_p3 = ((b[0:0] === 1'b1) ? 32'd4294967295 : 32'd0);

assign p_x_v_address0 = tmp_790_cast_fu_184_p1;

assign p_y_v_address0 = tmp_791_cast_fu_233_p1;

assign r_x_v_d0 = (r_x_v_q0 ^ tmp_895_i_fu_195_p2);

assign r_y_v_d0 = (r_y_v_q0 ^ tmp_895_i1_fu_244_p2);

assign tmp_787_cast_fu_134_p1 = tmp_fu_126_p3;

assign tmp_788_fu_138_p3 = {{tmp_919}, {5'd0}};

assign tmp_789_cast_fu_146_p1 = tmp_788_fu_138_p3;

assign tmp_790_cast_fu_184_p1 = tmp_790_fu_179_p2;

assign tmp_790_fu_179_p2 = (tmp_789_cast_reg_261 + tmp_i_cast_fu_175_p1);

assign tmp_791_cast_fu_233_p1 = tmp_791_fu_228_p2;

assign tmp_791_fu_228_p2 = (tmp_787_cast_reg_256 + tmp_i7_cast_fu_224_p1);

assign tmp_894_i1_fu_238_p2 = (r_y_v_q0 ^ p_y_v_q0);

assign tmp_894_i_fu_189_p2 = (r_x_v_q0 ^ p_x_v_q0);

assign tmp_895_i1_fu_244_p2 = (tmp_894_i1_fu_238_p2 & mask_cast_reg_266);

assign tmp_895_i_fu_195_p2 = (tmp_894_i_fu_189_p2 & mask_cast_reg_266);

assign tmp_fu_126_p3 = {{tmp_9191}, {5'd0}};

assign tmp_i7_cast_fu_224_p1 = i_i5_reg_115;

assign tmp_i7_fu_219_p1 = i_i5_reg_115;

assign tmp_i_cast_fu_175_p1 = i_i_reg_104;

assign tmp_i_fu_170_p1 = i_i_reg_104;

always @ (posedge ap_clk) begin
    tmp_787_cast_reg_256[4:0] <= 5'b00000;
    tmp_787_cast_reg_256[14] <= 1'b0;
    tmp_789_cast_reg_261[4:0] <= 5'b00000;
    tmp_789_cast_reg_261[14] <= 1'b0;
end

endmodule //cmov_aff