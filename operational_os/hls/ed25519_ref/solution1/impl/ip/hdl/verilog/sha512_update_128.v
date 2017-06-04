// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sha512_update_128 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        md_length_read,
        md_state_address0,
        md_state_ce0,
        md_state_we0,
        md_state_d0,
        md_state_q0,
        md_curlen_read,
        md_buf_address0,
        md_buf_ce0,
        md_buf_we0,
        md_buf_d0,
        md_buf_q0,
        in_r_address0,
        in_r_ce0,
        in_r_q0,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_state1 = 19'd1;
parameter    ap_ST_fsm_state2 = 19'd2;
parameter    ap_ST_fsm_state3 = 19'd4;
parameter    ap_ST_fsm_state4 = 19'd8;
parameter    ap_ST_fsm_state5 = 19'd16;
parameter    ap_ST_fsm_state6 = 19'd32;
parameter    ap_ST_fsm_state7 = 19'd64;
parameter    ap_ST_fsm_state8 = 19'd128;
parameter    ap_ST_fsm_state9 = 19'd256;
parameter    ap_ST_fsm_state10 = 19'd512;
parameter    ap_ST_fsm_state11 = 19'd1024;
parameter    ap_ST_fsm_state12 = 19'd2048;
parameter    ap_ST_fsm_state13 = 19'd4096;
parameter    ap_ST_fsm_state14 = 19'd8192;
parameter    ap_ST_fsm_state15 = 19'd16384;
parameter    ap_ST_fsm_state16 = 19'd32768;
parameter    ap_ST_fsm_state17 = 19'd65536;
parameter    ap_ST_fsm_state18 = 19'd131072;
parameter    ap_ST_fsm_state19 = 19'd262144;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] md_length_read;
output  [2:0] md_state_address0;
output   md_state_ce0;
output   md_state_we0;
output  [63:0] md_state_d0;
input  [63:0] md_state_q0;
input  [63:0] md_curlen_read;
output  [6:0] md_buf_address0;
output   md_buf_ce0;
output   md_buf_we0;
output  [7:0] md_buf_d0;
input  [7:0] md_buf_q0;
output  [6:0] in_r_address0;
output   in_r_ce0;
input  [7:0] in_r_q0;
output  [63:0] ap_return_0;
output  [63:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[2:0] md_state_address0;
reg md_state_ce0;
reg md_state_we0;
reg[63:0] md_state_d0;
reg[6:0] md_buf_address0;
reg md_buf_ce0;
reg md_buf_we0;
reg[7:0] md_buf_d0;
reg[6:0] in_r_address0;
reg in_r_ce0;
reg[63:0] ap_return_0;
reg[63:0] ap_return_1;

(* fsm_encoding = "none" *) reg   [18:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] grp_fu_212_p2;
reg   [63:0] reg_194;
wire    ap_CS_fsm_state6;
reg   [63:0] reg_203;
wire    ap_CS_fsm_state11;
reg   [7:0] temp_index_5_reg_221;
wire    ap_CS_fsm_state14;
reg   [63:0] reg_236;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire   [63:0] grp_fu_287_p2;
reg   [63:0] inlen_4_reg_279;
reg   [63:0] inlen_load_reg_550;
wire    ap_CS_fsm_state2;
reg   [63:0] md_length_load_reg_559;
reg   [63:0] md_curlen_load_reg_565;
wire   [0:0] grp_fu_341_p2;
reg   [0:0] tmp_12_reg_577;
wire    ap_CS_fsm_state3;
wire   [0:0] or_cond_fu_441_p2;
reg   [0:0] or_cond_reg_582;
wire    ap_CS_fsm_state4;
wire   [63:0] n_fu_446_p3;
reg   [63:0] n_reg_586;
wire    ap_CS_fsm_state5;
wire   [8:0] tmp_24_fu_453_p1;
reg   [8:0] tmp_24_reg_593;
wire    ap_CS_fsm_state7;
wire   [8:0] tmp_26_fu_467_p1;
reg   [8:0] tmp_26_reg_606;
reg   [0:0] tmp_17_reg_611;
wire   [63:0] tmp_19_fu_480_p1;
reg   [63:0] tmp_19_reg_618;
wire   [63:0] tmp_21_fu_485_p1;
reg   [63:0] tmp_21_reg_631;
reg   [63:0] p_01_idx_load_reg_641;
wire    ap_CS_fsm_state17;
reg   [6:0] temp_buf_address0;
reg    temp_buf_ce0;
reg    temp_buf_we0;
wire   [7:0] temp_buf_q0;
reg    temp_buf_ce1;
wire   [7:0] temp_buf_q1;
wire    grp_sha512_compress_128_fu_306_ap_start;
wire    grp_sha512_compress_128_fu_306_ap_done;
wire    grp_sha512_compress_128_fu_306_ap_idle;
wire    grp_sha512_compress_128_fu_306_ap_ready;
wire   [2:0] grp_sha512_compress_128_fu_306_md_state_address0;
wire    grp_sha512_compress_128_fu_306_md_state_ce0;
wire    grp_sha512_compress_128_fu_306_md_state_we0;
wire   [63:0] grp_sha512_compress_128_fu_306_md_state_d0;
wire   [6:0] grp_sha512_compress_128_fu_306_buf_r_address0;
wire    grp_sha512_compress_128_fu_306_buf_r_ce0;
wire   [6:0] grp_sha512_compress_128_fu_306_buf_r_address1;
wire    grp_sha512_compress_128_fu_306_buf_r_ce1;
wire    grp_sha512_compress_128_1_fu_362_ap_start;
wire    grp_sha512_compress_128_1_fu_362_ap_done;
wire    grp_sha512_compress_128_1_fu_362_ap_idle;
wire    grp_sha512_compress_128_1_fu_362_ap_ready;
wire   [2:0] grp_sha512_compress_128_1_fu_362_md_state_address0;
wire    grp_sha512_compress_128_1_fu_362_md_state_ce0;
wire    grp_sha512_compress_128_1_fu_362_md_state_we0;
wire   [63:0] grp_sha512_compress_128_1_fu_362_md_state_d0;
wire   [6:0] grp_sha512_compress_128_1_fu_362_buf_r_address0;
wire    grp_sha512_compress_128_1_fu_362_buf_r_ce0;
reg   [63:0] i_reg_161;
wire    ap_CS_fsm_state8;
reg   [7:0] temp_index_reg_172;
wire    ap_CS_fsm_state12;
reg   [7:0] temp_index_1_reg_183;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state13;
wire   [0:0] tmp_fu_335_p2;
reg    ap_reg_grp_sha512_compress_128_fu_306_ap_start;
reg    ap_reg_grp_sha512_compress_128_1_fu_362_ap_start;
wire    ap_CS_fsm_state18;
wire   [63:0] sum2_cast_fu_462_p1;
wire   [63:0] tmp_19_cast_fu_470_p1;
reg   [63:0] p_01_idx_fu_72;
reg   [63:0] inlen_fu_76;
reg   [63:0] md_length_fu_80;
wire    ap_CS_fsm_state16;
reg   [63:0] md_curlen_fu_84;
reg   [63:0] grp_fu_212_p0;
reg   [63:0] grp_fu_212_p1;
wire   [8:0] tmp_25_fu_457_p1;
reg   [63:0] grp_fu_287_p0;
reg   [63:0] grp_fu_287_p1;
reg   [63:0] grp_fu_341_p0;
reg   [63:0] grp_fu_341_p1;
wire   [56:0] tmp_23_fu_431_p4;
wire   [0:0] icmp_fu_346_p2;
wire   [0:0] tmp_15_fu_351_p2;
wire   [8:0] sum2_cast_fu_462_p0;
wire   [8:0] tmp_19_cast_fu_470_p0;
wire    ap_CS_fsm_state19;
reg   [63:0] ap_return_0_preg;
reg   [63:0] ap_return_1_preg;
reg   [18:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 19'd1;
#0 ap_reg_grp_sha512_compress_128_fu_306_ap_start = 1'b0;
#0 ap_reg_grp_sha512_compress_128_1_fu_362_ap_start = 1'b0;
#0 ap_return_0_preg = 64'd0;
#0 ap_return_1_preg = 64'd0;
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
    .address1(grp_sha512_compress_128_fu_306_buf_r_address1),
    .ce1(temp_buf_ce1),
    .q1(temp_buf_q1)
);

sha512_compress_128 grp_sha512_compress_128_fu_306(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sha512_compress_128_fu_306_ap_start),
    .ap_done(grp_sha512_compress_128_fu_306_ap_done),
    .ap_idle(grp_sha512_compress_128_fu_306_ap_idle),
    .ap_ready(grp_sha512_compress_128_fu_306_ap_ready),
    .md_state_address0(grp_sha512_compress_128_fu_306_md_state_address0),
    .md_state_ce0(grp_sha512_compress_128_fu_306_md_state_ce0),
    .md_state_we0(grp_sha512_compress_128_fu_306_md_state_we0),
    .md_state_d0(grp_sha512_compress_128_fu_306_md_state_d0),
    .md_state_q0(md_state_q0),
    .buf_r_address0(grp_sha512_compress_128_fu_306_buf_r_address0),
    .buf_r_ce0(grp_sha512_compress_128_fu_306_buf_r_ce0),
    .buf_r_q0(temp_buf_q0),
    .buf_r_address1(grp_sha512_compress_128_fu_306_buf_r_address1),
    .buf_r_ce1(grp_sha512_compress_128_fu_306_buf_r_ce1),
    .buf_r_q1(temp_buf_q1)
);

sha512_compress_128_1 grp_sha512_compress_128_1_fu_362(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sha512_compress_128_1_fu_362_ap_start),
    .ap_done(grp_sha512_compress_128_1_fu_362_ap_done),
    .ap_idle(grp_sha512_compress_128_1_fu_362_ap_idle),
    .ap_ready(grp_sha512_compress_128_1_fu_362_ap_ready),
    .md_state_address0(grp_sha512_compress_128_1_fu_362_md_state_address0),
    .md_state_ce0(grp_sha512_compress_128_1_fu_362_md_state_ce0),
    .md_state_we0(grp_sha512_compress_128_1_fu_362_md_state_we0),
    .md_state_d0(grp_sha512_compress_128_1_fu_362_md_state_d0),
    .md_state_q0(md_state_q0),
    .buf_r_address0(grp_sha512_compress_128_1_fu_362_buf_r_address0),
    .buf_r_ce0(grp_sha512_compress_128_1_fu_362_buf_r_ce0),
    .buf_r_q0(in_r_q0),
    .p_01_idx(p_01_idx_load_reg_641)
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
        ap_reg_grp_sha512_compress_128_1_fu_362_ap_start <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            ap_reg_grp_sha512_compress_128_1_fu_362_ap_start <= 1'b1;
        end else if ((1'b1 == grp_sha512_compress_128_1_fu_362_ap_ready)) begin
            ap_reg_grp_sha512_compress_128_1_fu_362_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_sha512_compress_128_fu_306_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state11) & (grp_fu_341_p2 == 1'd1))) begin
            ap_reg_grp_sha512_compress_128_fu_306_ap_start <= 1'b1;
        end else if ((1'b1 == grp_sha512_compress_128_fu_306_ap_ready)) begin
            ap_reg_grp_sha512_compress_128_fu_306_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 64'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state19)) begin
            ap_return_0_preg <= reg_194;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 64'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state19)) begin
            ap_return_1_preg <= reg_203;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_reg_161 <= reg_194;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_reg_161 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state18) & (grp_sha512_compress_128_1_fu_362_ap_done == 1'b1))) begin
        inlen_fu_76 <= grp_fu_212_p2;
    end else if (((1'b1 == ap_CS_fsm_state14) & (grp_fu_341_p2 == 1'd1))) begin
        inlen_fu_76 <= inlen_4_reg_279;
    end else if (((1'b1 == ap_CS_fsm_state10) & (grp_fu_341_p2 == 1'd0))) begin
        inlen_fu_76 <= grp_fu_287_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (1'd0 == tmp_fu_335_p2))) begin
        inlen_fu_76 <= 64'd128;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (grp_fu_341_p2 == 1'd0))) begin
        md_curlen_fu_84 <= reg_236;
    end else if ((((1'b1 == ap_CS_fsm_state14) & (grp_fu_341_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_441_p2 == 1'd1)))) begin
        md_curlen_fu_84 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (1'd0 == tmp_fu_335_p2))) begin
        md_curlen_fu_84 <= md_curlen_read;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_441_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state16) & (or_cond_reg_582 == 1'd0) & (tmp_17_reg_611 == 1'd1)))) begin
        md_length_fu_80 <= grp_fu_212_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (1'd0 == tmp_fu_335_p2))) begin
        md_length_fu_80 <= md_length_read;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (grp_fu_341_p2 == 1'd1))) begin
        p_01_idx_fu_72 <= reg_236;
    end else if (((1'b1 == ap_CS_fsm_state17) | ((1'b1 == ap_CS_fsm_state10) & (grp_fu_341_p2 == 1'd0)))) begin
        p_01_idx_fu_72 <= grp_fu_212_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (1'd0 == tmp_fu_335_p2))) begin
        p_01_idx_fu_72 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_fu_341_p2 == 1'd1))) begin
        reg_194 <= md_length_fu_80;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (1'd1 == tmp_fu_335_p2))) begin
        reg_194 <= md_length_read;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        reg_194 <= grp_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_fu_341_p2 == 1'd1))) begin
        reg_203 <= md_curlen_fu_84;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (1'd1 == tmp_fu_335_p2))) begin
        reg_203 <= md_curlen_read;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_203 <= grp_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) & (grp_sha512_compress_128_fu_306_ap_done == 1'b1))) begin
        temp_index_1_reg_183 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        temp_index_1_reg_183 <= temp_index_5_reg_221;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (grp_fu_341_p2 == 1'd1))) begin
        temp_index_reg_172 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        temp_index_reg_172 <= reg_203;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        inlen_4_reg_279 <= grp_fu_287_p2;
        tmp_17_reg_611 <= grp_fu_341_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        inlen_load_reg_550 <= inlen_fu_76;
        md_curlen_load_reg_565 <= md_curlen_fu_84;
        md_length_load_reg_559 <= md_length_fu_80;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        n_reg_586 <= n_fu_446_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        or_cond_reg_582 <= or_cond_fu_441_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        p_01_idx_load_reg_641 <= p_01_idx_fu_72;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_236 <= grp_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        temp_index_5_reg_221 <= grp_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_12_reg_577 <= grp_fu_341_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state11) & (grp_fu_341_p2 == 1'd0))) begin
        tmp_19_reg_618[7 : 0] <= tmp_19_fu_480_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (grp_fu_341_p2 == 1'd0))) begin
        tmp_21_reg_631[7 : 0] <= tmp_21_fu_485_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_24_reg_593 <= tmp_24_fu_453_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_26_reg_606 <= tmp_26_fu_467_p1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | (1'b1 == ap_CS_fsm_state19))) begin
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
    if ((1'b1 == ap_CS_fsm_state19)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        ap_return_0 = reg_194;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        ap_return_1 = reg_203;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_212_p0 = inlen_load_reg_550;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_212_p0 = p_01_idx_fu_72;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_212_p0 = temp_index_1_reg_183;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_212_p0 = temp_index_reg_172;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state10))) begin
        grp_fu_212_p0 = n_reg_586;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8))) begin
        grp_fu_212_p0 = tmp_24_reg_593;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_212_p0 = 64'd1;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_fu_212_p0 = md_length_load_reg_559;
    end else begin
        grp_fu_212_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_212_p1 = 64'd18446744073709551488;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_212_p1 = 64'd128;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_212_p1 = 8'd1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_212_p1 = p_01_idx_fu_72;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_212_p1 = md_curlen_load_reg_565;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_212_p1 = tmp_26_reg_606;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_212_p1 = tmp_25_fu_457_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_212_p1 = i_reg_161;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_fu_212_p1 = 64'd1024;
    end else begin
        grp_fu_212_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_287_p0 = inlen_load_reg_550;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_287_p0 = 64'd128;
    end else begin
        grp_fu_287_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_287_p1 = n_reg_586;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_287_p1 = md_curlen_load_reg_565;
    end else begin
        grp_fu_287_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_341_p0 = temp_index_1_reg_183;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_341_p0 = temp_index_reg_172;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_341_p0 = reg_236;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_341_p0 = i_reg_161;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_341_p0 = md_curlen_load_reg_565;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_341_p0 = inlen_fu_76;
    end else begin
        grp_fu_341_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14))) begin
        grp_fu_341_p1 = 8'd128;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_341_p1 = 64'd128;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_341_p1 = n_reg_586;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_341_p1 = 64'd0;
    end else begin
        grp_fu_341_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        in_r_address0 = sum2_cast_fu_462_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        in_r_address0 = grp_sha512_compress_128_1_fu_362_buf_r_address0;
    end else begin
        in_r_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        in_r_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        in_r_ce0 = grp_sha512_compress_128_1_fu_362_buf_r_ce0;
    end else begin
        in_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        md_buf_address0 = tmp_21_reg_631;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        md_buf_address0 = tmp_19_fu_480_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        md_buf_address0 = tmp_19_cast_fu_470_p1;
    end else begin
        md_buf_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state15))) begin
        md_buf_ce0 = 1'b1;
    end else begin
        md_buf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        md_buf_d0 = temp_buf_q0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        md_buf_d0 = in_r_q0;
    end else begin
        md_buf_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state15))) begin
        md_buf_we0 = 1'b1;
    end else begin
        md_buf_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        md_state_address0 = grp_sha512_compress_128_1_fu_362_md_state_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        md_state_address0 = grp_sha512_compress_128_fu_306_md_state_address0;
    end else begin
        md_state_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        md_state_ce0 = grp_sha512_compress_128_1_fu_362_md_state_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        md_state_ce0 = grp_sha512_compress_128_fu_306_md_state_ce0;
    end else begin
        md_state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        md_state_d0 = grp_sha512_compress_128_1_fu_362_md_state_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        md_state_d0 = grp_sha512_compress_128_fu_306_md_state_d0;
    end else begin
        md_state_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        md_state_we0 = grp_sha512_compress_128_1_fu_362_md_state_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        md_state_we0 = grp_sha512_compress_128_fu_306_md_state_we0;
    end else begin
        md_state_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        temp_buf_address0 = tmp_21_fu_485_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        temp_buf_address0 = tmp_19_reg_618;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        temp_buf_address0 = grp_sha512_compress_128_fu_306_buf_r_address0;
    end else begin
        temp_buf_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12))) begin
        temp_buf_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        temp_buf_ce0 = grp_sha512_compress_128_fu_306_buf_r_ce0;
    end else begin
        temp_buf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        temp_buf_ce1 = grp_sha512_compress_128_fu_306_buf_r_ce1;
    end else begin
        temp_buf_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        temp_buf_we0 = 1'b1;
    end else begin
        temp_buf_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (1'd0 == tmp_fu_335_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (1'd1 == tmp_fu_335_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_fu_341_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (or_cond_fu_441_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_fu_341_p2 == 1'd1))) begin
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
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (grp_fu_341_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (grp_fu_341_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (grp_sha512_compress_128_fu_306_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (grp_fu_341_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            if (((1'b1 == ap_CS_fsm_state18) & (grp_sha512_compress_128_1_fu_362_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
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

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_fu_212_p2 = (grp_fu_212_p0 + grp_fu_212_p1);

assign grp_fu_287_p2 = (grp_fu_287_p0 - grp_fu_287_p1);

assign grp_fu_341_p2 = ((grp_fu_341_p0 == grp_fu_341_p1) ? 1'b1 : 1'b0);

assign grp_sha512_compress_128_1_fu_362_ap_start = ap_reg_grp_sha512_compress_128_1_fu_362_ap_start;

assign grp_sha512_compress_128_fu_306_ap_start = ap_reg_grp_sha512_compress_128_fu_306_ap_start;

assign icmp_fu_346_p2 = ((tmp_23_fu_431_p4 != 57'd0) ? 1'b1 : 1'b0);

assign n_fu_446_p3 = ((tmp_15_fu_351_p2[0:0] === 1'b1) ? inlen_load_reg_550 : grp_fu_287_p2);

assign or_cond_fu_441_p2 = (tmp_12_reg_577 & icmp_fu_346_p2);

assign sum2_cast_fu_462_p0 = grp_fu_212_p2;

assign sum2_cast_fu_462_p1 = sum2_cast_fu_462_p0;

assign tmp_15_fu_351_p2 = ((inlen_load_reg_550 < grp_fu_287_p2) ? 1'b1 : 1'b0);

assign tmp_19_cast_fu_470_p0 = grp_fu_212_p2;

assign tmp_19_cast_fu_470_p1 = tmp_19_cast_fu_470_p0;

assign tmp_19_fu_480_p1 = temp_index_reg_172;

assign tmp_21_fu_485_p1 = temp_index_1_reg_183;

assign tmp_23_fu_431_p4 = {{inlen_load_reg_550[63:7]}};

assign tmp_24_fu_453_p1 = i_reg_161[8:0];

assign tmp_25_fu_457_p1 = p_01_idx_fu_72[8:0];

assign tmp_26_fu_467_p1 = md_curlen_load_reg_565[8:0];

assign tmp_fu_335_p2 = ((md_curlen_read > 64'd128) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    tmp_19_reg_618[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    tmp_21_reg_631[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end

endmodule //sha512_update_128
