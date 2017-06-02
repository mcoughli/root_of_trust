// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sha512_update_32_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        md_length_i,
        md_length_o,
        md_length_o_ap_vld,
        md_state_address0,
        md_state_ce0,
        md_state_we0,
        md_state_d0,
        md_state_q0,
        md_curlen_i,
        md_curlen_o,
        md_curlen_o_ap_vld,
        md_buf_address0,
        md_buf_ce0,
        md_buf_we0,
        md_buf_d0,
        md_buf_q0,
        in_r_address0,
        in_r_ce0,
        in_r_q0
);

parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] md_length_i;
output  [63:0] md_length_o;
output   md_length_o_ap_vld;
output  [2:0] md_state_address0;
output   md_state_ce0;
output   md_state_we0;
output  [63:0] md_state_d0;
input  [63:0] md_state_q0;
input  [63:0] md_curlen_i;
output  [63:0] md_curlen_o;
output   md_curlen_o_ap_vld;
output  [6:0] md_buf_address0;
output   md_buf_ce0;
output   md_buf_we0;
output  [7:0] md_buf_d0;
input  [7:0] md_buf_q0;
output  [5:0] in_r_address0;
output   in_r_ce0;
input  [7:0] in_r_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] md_length_o;
reg md_length_o_ap_vld;
reg[2:0] md_state_address0;
reg md_state_ce0;
reg md_state_we0;
reg[63:0] md_state_d0;
reg[63:0] md_curlen_o;
reg md_curlen_o_ap_vld;
reg[6:0] md_buf_address0;
reg md_buf_ce0;
reg md_buf_we0;
reg[7:0] md_buf_d0;
reg[5:0] in_r_address0;
reg in_r_ce0;

(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] grp_fu_228_p2;
reg   [63:0] i_1_reg_241;
wire    ap_CS_fsm_state6;
reg   [7:0] temp_index_2_reg_252;
wire    ap_CS_fsm_state10;
reg   [7:0] temp_index_3_reg_255;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state17;
wire   [63:0] grp_fu_305_p2;
reg   [63:0] inlen_2_reg_290;
wire    ap_CS_fsm_state9;
wire   [0:0] tmp_fu_324_p2;
reg   [0:0] tmp_reg_452;
reg   [63:0] inlen_load_reg_464;
wire    ap_CS_fsm_state2;
reg   [63:0] md_curlen_read_4_reg_476;
wire    ap_CS_fsm_state3;
wire   [0:0] grp_fu_330_p2;
reg   [0:0] tmp_2_reg_481;
wire   [63:0] n_fu_397_p3;
reg   [63:0] n_reg_489;
wire    ap_CS_fsm_state5;
wire   [8:0] tmp_17_fu_404_p1;
reg   [8:0] tmp_17_reg_497;
wire   [7:0] tmp_18_fu_408_p1;
reg   [7:0] tmp_18_reg_502;
wire    ap_CS_fsm_state7;
reg   [0:0] tmp_s_reg_515;
wire   [63:0] tmp_9_fu_432_p1;
reg   [63:0] tmp_9_reg_522;
wire   [63:0] tmp_11_fu_437_p1;
reg   [63:0] tmp_11_reg_535;
reg   [6:0] temp_buf_address0;
reg    temp_buf_ce0;
reg    temp_buf_we0;
wire   [7:0] temp_buf_q0;
reg    temp_buf_ce1;
wire   [7:0] temp_buf_q1;
wire    grp_sha512_compress_32_fu_352_ap_start;
wire    grp_sha512_compress_32_fu_352_ap_done;
wire    grp_sha512_compress_32_fu_352_ap_idle;
wire    grp_sha512_compress_32_fu_352_ap_ready;
wire   [2:0] grp_sha512_compress_32_fu_352_md_state_address0;
wire    grp_sha512_compress_32_fu_352_md_state_ce0;
wire    grp_sha512_compress_32_fu_352_md_state_we0;
wire   [63:0] grp_sha512_compress_32_fu_352_md_state_d0;
wire   [5:0] grp_sha512_compress_32_fu_352_buf_r_address0;
wire    grp_sha512_compress_32_fu_352_buf_r_ce0;
wire    grp_sha512_compress_128_fu_364_ap_start;
wire    grp_sha512_compress_128_fu_364_ap_done;
wire    grp_sha512_compress_128_fu_364_ap_idle;
wire    grp_sha512_compress_128_fu_364_ap_ready;
wire   [2:0] grp_sha512_compress_128_fu_364_md_state_address0;
wire    grp_sha512_compress_128_fu_364_md_state_ce0;
wire    grp_sha512_compress_128_fu_364_md_state_we0;
wire   [63:0] grp_sha512_compress_128_fu_364_md_state_d0;
wire   [6:0] grp_sha512_compress_128_fu_364_buf_r_address0;
wire    grp_sha512_compress_128_fu_364_buf_r_ce0;
wire   [6:0] grp_sha512_compress_128_fu_364_buf_r_address1;
wire    grp_sha512_compress_128_fu_364_buf_r_ce1;
reg   [63:0] p_01_idx_reg_172;
reg   [63:0] i_reg_184;
wire    ap_CS_fsm_state8;
reg   [7:0] temp_index_reg_195;
wire    ap_CS_fsm_state11;
reg   [7:0] temp_index_1_reg_206;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state12;
reg   [63:0] p_pn_reg_217;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state15;
reg    ap_reg_grp_sha512_compress_32_fu_352_ap_start;
wire    ap_CS_fsm_state4;
wire   [0:0] or_cond_fu_392_p2;
reg    ap_reg_grp_sha512_compress_128_fu_364_ap_start;
wire   [63:0] sum2_cast_fu_417_p1;
wire   [63:0] tmp_5_cast_fu_427_p1;
reg   [63:0] inlen_fu_80;
reg   [63:0] grp_fu_228_p0;
wire   [7:0] tmp_19_fu_412_p1;
wire   [8:0] tmp_20_fu_422_p1;
reg   [63:0] grp_fu_228_p1;
reg   [63:0] grp_fu_305_p0;
reg   [63:0] grp_fu_305_p1;
reg   [63:0] grp_fu_330_p0;
reg   [63:0] grp_fu_330_p1;
wire   [56:0] tmp_16_fu_382_p4;
wire   [0:0] icmp_fu_336_p2;
wire   [0:0] tmp_7_fu_341_p2;
wire   [7:0] sum2_cast_fu_417_p0;
wire   [8:0] tmp_5_cast_fu_427_p0;
reg   [16:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_reg_grp_sha512_compress_32_fu_352_ap_start = 1'b0;
#0 ap_reg_grp_sha512_compress_128_fu_364_ap_start = 1'b0;
end

sha512_update_32_hbi #(
    .DataWidth( 8 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
temp_buf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(temp_buf_address0),
    .ce0(temp_buf_ce0),
    .we0(temp_buf_we0),
    .d0(md_buf_q0),
    .q0(temp_buf_q0),
    .address1(grp_sha512_compress_128_fu_364_buf_r_address1),
    .ce1(temp_buf_ce1),
    .q1(temp_buf_q1)
);

sha512_compress_32 grp_sha512_compress_32_fu_352(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sha512_compress_32_fu_352_ap_start),
    .ap_done(grp_sha512_compress_32_fu_352_ap_done),
    .ap_idle(grp_sha512_compress_32_fu_352_ap_idle),
    .ap_ready(grp_sha512_compress_32_fu_352_ap_ready),
    .md_state_address0(grp_sha512_compress_32_fu_352_md_state_address0),
    .md_state_ce0(grp_sha512_compress_32_fu_352_md_state_ce0),
    .md_state_we0(grp_sha512_compress_32_fu_352_md_state_we0),
    .md_state_d0(grp_sha512_compress_32_fu_352_md_state_d0),
    .md_state_q0(md_state_q0),
    .buf_r_address0(grp_sha512_compress_32_fu_352_buf_r_address0),
    .buf_r_ce0(grp_sha512_compress_32_fu_352_buf_r_ce0),
    .buf_r_q0(in_r_q0),
    .sum(p_01_idx_reg_172)
);

sha512_compress_128 grp_sha512_compress_128_fu_364(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sha512_compress_128_fu_364_ap_start),
    .ap_done(grp_sha512_compress_128_fu_364_ap_done),
    .ap_idle(grp_sha512_compress_128_fu_364_ap_idle),
    .ap_ready(grp_sha512_compress_128_fu_364_ap_ready),
    .md_state_address0(grp_sha512_compress_128_fu_364_md_state_address0),
    .md_state_ce0(grp_sha512_compress_128_fu_364_md_state_ce0),
    .md_state_we0(grp_sha512_compress_128_fu_364_md_state_we0),
    .md_state_d0(grp_sha512_compress_128_fu_364_md_state_d0),
    .md_state_q0(md_state_q0),
    .buf_r_address0(grp_sha512_compress_128_fu_364_buf_r_address0),
    .buf_r_ce0(grp_sha512_compress_128_fu_364_buf_r_ce0),
    .buf_r_q0(temp_buf_q0),
    .buf_r_address1(grp_sha512_compress_128_fu_364_buf_r_address1),
    .buf_r_ce1(grp_sha512_compress_128_fu_364_buf_r_ce1),
    .buf_r_q1(temp_buf_q1)
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
        ap_reg_grp_sha512_compress_128_fu_364_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state10) & (grp_fu_330_p2 == 1'd1))) begin
            ap_reg_grp_sha512_compress_128_fu_364_ap_start <= 1'b1;
        end else if ((1'b1 == grp_sha512_compress_128_fu_364_ap_ready)) begin
            ap_reg_grp_sha512_compress_128_fu_364_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_sha512_compress_32_fu_352_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state4) & (1'd1 == or_cond_fu_392_p2))) begin
            ap_reg_grp_sha512_compress_32_fu_352_ap_start <= 1'b1;
        end else if ((1'b1 == grp_sha512_compress_32_fu_352_ap_ready)) begin
            ap_reg_grp_sha512_compress_32_fu_352_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_reg_184 <= i_1_reg_241;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_reg_184 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state16) & (grp_sha512_compress_32_fu_352_ap_done == 1'b1))) begin
        inlen_fu_80 <= grp_fu_228_p2;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        inlen_fu_80 <= inlen_2_reg_290;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (tmp_fu_324_p2 == 1'd0))) begin
        inlen_fu_80 <= 64'd32;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (tmp_fu_324_p2 == 1'd0))) begin
        p_01_idx_reg_172 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        p_01_idx_reg_172 <= grp_fu_228_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        p_pn_reg_217 <= n_reg_489;
    end else if (((1'b1 == ap_CS_fsm_state16) & (grp_sha512_compress_32_fu_352_ap_done == 1'b1))) begin
        p_pn_reg_217 <= 64'd128;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (grp_sha512_compress_128_fu_364_ap_done == 1'b1))) begin
        temp_index_1_reg_206 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        temp_index_1_reg_206 <= temp_index_3_reg_255;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (grp_fu_330_p2 == 1'd1))) begin
        temp_index_reg_195 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        temp_index_reg_195 <= temp_index_2_reg_252;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_1_reg_241 <= grp_fu_228_p2;
        tmp_17_reg_497 <= tmp_17_fu_404_p1;
        tmp_18_reg_502 <= tmp_18_fu_408_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        inlen_2_reg_290 <= grp_fu_305_p2;
        tmp_s_reg_515 <= grp_fu_330_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_reg_452 == 1'd0))) begin
        inlen_load_reg_464 <= inlen_fu_80;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        md_curlen_read_4_reg_476 <= md_curlen_i;
        tmp_2_reg_481 <= grp_fu_330_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        n_reg_489 <= n_fu_397_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        temp_index_2_reg_252 <= grp_fu_228_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        temp_index_3_reg_255 <= grp_fu_228_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) & (1'd0 == grp_fu_330_p2))) begin
        tmp_11_reg_535[7 : 0] <= tmp_11_fu_437_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (1'd0 == grp_fu_330_p2))) begin
        tmp_9_reg_522[7 : 0] <= tmp_9_fu_432_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_reg_452 <= tmp_fu_324_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & ((grp_fu_330_p2 == 1'd1) | (tmp_reg_452 == 1'd1))))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & ((grp_fu_330_p2 == 1'd1) | (tmp_reg_452 == 1'd1)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_228_p0 = p_pn_reg_217;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_228_p0 = inlen_load_reg_464;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_228_p0 = temp_index_1_reg_206;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_228_p0 = temp_index_reg_195;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_228_p0 = md_curlen_i;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_228_p0 = tmp_20_fu_422_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_228_p0 = tmp_19_fu_412_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_228_p0 = 64'd1;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_228_p0 = md_length_i;
    end else begin
        grp_fu_228_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_228_p1 = p_01_idx_reg_172;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_228_p1 = 64'd18446744073709551488;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13))) begin
        grp_fu_228_p1 = 8'd1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_228_p1 = n_reg_489;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_228_p1 = tmp_17_reg_497;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_228_p1 = tmp_18_reg_502;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_228_p1 = i_reg_184;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state4))) begin
        grp_fu_228_p1 = 64'd1024;
    end else begin
        grp_fu_228_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_305_p0 = inlen_load_reg_464;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_305_p0 = 64'd128;
    end else begin
        grp_fu_305_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_305_p1 = n_reg_489;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_305_p1 = md_curlen_read_4_reg_476;
    end else begin
        grp_fu_305_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_330_p0 = temp_index_1_reg_206;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_330_p0 = temp_index_reg_195;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_330_p0 = grp_fu_228_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_330_p0 = i_reg_184;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_330_p0 = md_curlen_i;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_330_p0 = inlen_fu_80;
    end else begin
        grp_fu_330_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13))) begin
        grp_fu_330_p1 = 8'd128;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_330_p1 = 64'd128;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_330_p1 = n_reg_489;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_330_p1 = 64'd0;
    end else begin
        grp_fu_330_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        in_r_address0 = sum2_cast_fu_417_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        in_r_address0 = grp_sha512_compress_32_fu_352_buf_r_address0;
    end else begin
        in_r_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        in_r_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        in_r_ce0 = grp_sha512_compress_32_fu_352_buf_r_ce0;
    end else begin
        in_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        md_buf_address0 = tmp_11_reg_535;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        md_buf_address0 = tmp_9_fu_432_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        md_buf_address0 = tmp_5_cast_fu_427_p1;
    end else begin
        md_buf_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state14))) begin
        md_buf_ce0 = 1'b1;
    end else begin
        md_buf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        md_buf_d0 = temp_buf_q0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        md_buf_d0 = in_r_q0;
    end else begin
        md_buf_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state14))) begin
        md_buf_we0 = 1'b1;
    end else begin
        md_buf_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) & (tmp_s_reg_515 == 1'd1))) begin
        md_curlen_o = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        md_curlen_o = grp_fu_228_p2;
    end else begin
        md_curlen_o = md_curlen_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state15) & (tmp_s_reg_515 == 1'd1)))) begin
        md_curlen_o_ap_vld = 1'b1;
    end else begin
        md_curlen_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (1'd1 == or_cond_fu_392_p2)) | ((1'b1 == ap_CS_fsm_state15) & (tmp_s_reg_515 == 1'd1)))) begin
        md_length_o = grp_fu_228_p2;
    end else begin
        md_length_o = md_length_i;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (1'd1 == or_cond_fu_392_p2)) | ((1'b1 == ap_CS_fsm_state15) & (tmp_s_reg_515 == 1'd1)))) begin
        md_length_o_ap_vld = 1'b1;
    end else begin
        md_length_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        md_state_address0 = grp_sha512_compress_128_fu_364_md_state_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        md_state_address0 = grp_sha512_compress_32_fu_352_md_state_address0;
    end else begin
        md_state_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        md_state_ce0 = grp_sha512_compress_128_fu_364_md_state_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        md_state_ce0 = grp_sha512_compress_32_fu_352_md_state_ce0;
    end else begin
        md_state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        md_state_d0 = grp_sha512_compress_128_fu_364_md_state_d0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        md_state_d0 = grp_sha512_compress_32_fu_352_md_state_d0;
    end else begin
        md_state_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        md_state_we0 = grp_sha512_compress_128_fu_364_md_state_we0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        md_state_we0 = grp_sha512_compress_32_fu_352_md_state_we0;
    end else begin
        md_state_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        temp_buf_address0 = tmp_11_fu_437_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        temp_buf_address0 = tmp_9_reg_522;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        temp_buf_address0 = grp_sha512_compress_128_fu_364_buf_r_address0;
    end else begin
        temp_buf_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state11))) begin
        temp_buf_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        temp_buf_ce0 = grp_sha512_compress_128_fu_364_buf_r_ce0;
    end else begin
        temp_buf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        temp_buf_ce1 = grp_sha512_compress_128_fu_364_buf_r_ce1;
    end else begin
        temp_buf_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        temp_buf_we0 = 1'b1;
    end else begin
        temp_buf_we0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & ((grp_fu_330_p2 == 1'd1) | (tmp_reg_452 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (1'd1 == or_cond_fu_392_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_fu_330_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_fu_330_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (grp_fu_330_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (grp_sha512_compress_128_fu_364_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (grp_fu_330_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_CS_fsm_state16) & (grp_sha512_compress_32_fu_352_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_fu_228_p2 = (grp_fu_228_p0 + grp_fu_228_p1);

assign grp_fu_305_p2 = (grp_fu_305_p0 - grp_fu_305_p1);

assign grp_fu_330_p2 = ((grp_fu_330_p0 == grp_fu_330_p1) ? 1'b1 : 1'b0);

assign grp_sha512_compress_128_fu_364_ap_start = ap_reg_grp_sha512_compress_128_fu_364_ap_start;

assign grp_sha512_compress_32_fu_352_ap_start = ap_reg_grp_sha512_compress_32_fu_352_ap_start;

assign icmp_fu_336_p2 = ((tmp_16_fu_382_p4 != 57'd0) ? 1'b1 : 1'b0);

assign n_fu_397_p3 = ((tmp_7_fu_341_p2[0:0] === 1'b1) ? inlen_load_reg_464 : grp_fu_305_p2);

assign or_cond_fu_392_p2 = (tmp_2_reg_481 & icmp_fu_336_p2);

assign sum2_cast_fu_417_p0 = grp_fu_228_p2;

assign sum2_cast_fu_417_p1 = sum2_cast_fu_417_p0;

assign tmp_11_fu_437_p1 = temp_index_1_reg_206;

assign tmp_16_fu_382_p4 = {{inlen_load_reg_464[63:7]}};

assign tmp_17_fu_404_p1 = i_reg_184[8:0];

assign tmp_18_fu_408_p1 = i_reg_184[7:0];

assign tmp_19_fu_412_p1 = p_01_idx_reg_172[7:0];

assign tmp_20_fu_422_p1 = md_curlen_i[8:0];

assign tmp_5_cast_fu_427_p0 = grp_fu_228_p2;

assign tmp_5_cast_fu_427_p1 = tmp_5_cast_fu_427_p0;

assign tmp_7_fu_341_p2 = ((inlen_load_reg_464 < grp_fu_305_p2) ? 1'b1 : 1'b0);

assign tmp_9_fu_432_p1 = temp_index_reg_195;

assign tmp_fu_324_p2 = ((md_curlen_i > 64'd128) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    tmp_9_reg_522[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    tmp_11_reg_535[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end

endmodule //sha512_update_32_1
