// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module crypto_sign_ed25519_9 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        r_address0,
        r_ce0,
        r_we0,
        r_d0,
        x_v_address0,
        x_v_ce0,
        x_v_q0,
        x_v_address1,
        x_v_ce1,
        x_v_q1
);

parameter    ap_ST_fsm_state1 = 21'd1;
parameter    ap_ST_fsm_state2 = 21'd2;
parameter    ap_ST_fsm_state3 = 21'd4;
parameter    ap_ST_fsm_state4 = 21'd8;
parameter    ap_ST_fsm_state5 = 21'd16;
parameter    ap_ST_fsm_state6 = 21'd32;
parameter    ap_ST_fsm_state7 = 21'd64;
parameter    ap_ST_fsm_state8 = 21'd128;
parameter    ap_ST_fsm_state9 = 21'd256;
parameter    ap_ST_fsm_state10 = 21'd512;
parameter    ap_ST_fsm_state11 = 21'd1024;
parameter    ap_ST_fsm_state12 = 21'd2048;
parameter    ap_ST_fsm_state13 = 21'd4096;
parameter    ap_ST_fsm_state14 = 21'd8192;
parameter    ap_ST_fsm_state15 = 21'd16384;
parameter    ap_ST_fsm_state16 = 21'd32768;
parameter    ap_ST_fsm_state17 = 21'd65536;
parameter    ap_ST_fsm_state18 = 21'd131072;
parameter    ap_ST_fsm_state19 = 21'd262144;
parameter    ap_ST_fsm_state20 = 21'd524288;
parameter    ap_ST_fsm_state21 = 21'd1048576;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] r_address0;
output   r_ce0;
output   r_we0;
output  [7:0] r_d0;
output  [4:0] x_v_address0;
output   x_v_ce0;
input  [31:0] x_v_q0;
output  [4:0] x_v_address1;
output   x_v_ce1;
input  [31:0] x_v_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg r_ce0;
reg r_we0;
reg[4:0] x_v_address0;
reg x_v_ce0;
reg[4:0] x_v_address1;
reg x_v_ce1;

(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire   [5:0] i_22_fu_693_p2;
reg   [5:0] i_22_reg_872;
wire    ap_CS_fsm_state20;
wire   [63:0] tmp_fu_699_p1;
reg   [63:0] tmp_reg_877;
wire   [0:0] exitcond_fu_687_p2;
reg   [4:0] y_v_address0;
reg    y_v_ce0;
reg    y_v_we0;
reg   [31:0] y_v_d0;
wire   [31:0] y_v_q0;
reg   [4:0] y_v_address1;
reg    y_v_ce1;
reg    y_v_we1;
wire    grp_crypto_sign_ed25519_21_fu_682_ap_start;
wire    grp_crypto_sign_ed25519_21_fu_682_ap_done;
wire    grp_crypto_sign_ed25519_21_fu_682_ap_idle;
wire    grp_crypto_sign_ed25519_21_fu_682_ap_ready;
wire   [4:0] grp_crypto_sign_ed25519_21_fu_682_r_v_address0;
wire    grp_crypto_sign_ed25519_21_fu_682_r_v_ce0;
wire    grp_crypto_sign_ed25519_21_fu_682_r_v_we0;
wire   [31:0] grp_crypto_sign_ed25519_21_fu_682_r_v_d0;
reg   [5:0] i_reg_671;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state21;
reg    ap_reg_grp_crypto_sign_ed25519_21_fu_682_ap_start;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state17;
reg   [20:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 21'd1;
#0 ap_reg_grp_crypto_sign_ed25519_21_fu_682_ap_start = 1'b0;
end

crypto_sign_ed255Xh4 #(
    .DataWidth( 32 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
y_v_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(y_v_address0),
    .ce0(y_v_ce0),
    .we0(y_v_we0),
    .d0(y_v_d0),
    .q0(y_v_q0),
    .address1(y_v_address1),
    .ce1(y_v_ce1),
    .we1(y_v_we1),
    .d1(x_v_q1)
);

crypto_sign_ed25519_21 grp_crypto_sign_ed25519_21_fu_682(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_crypto_sign_ed25519_21_fu_682_ap_start),
    .ap_done(grp_crypto_sign_ed25519_21_fu_682_ap_done),
    .ap_idle(grp_crypto_sign_ed25519_21_fu_682_ap_idle),
    .ap_ready(grp_crypto_sign_ed25519_21_fu_682_ap_ready),
    .r_v_address0(grp_crypto_sign_ed25519_21_fu_682_r_v_address0),
    .r_v_ce0(grp_crypto_sign_ed25519_21_fu_682_r_v_ce0),
    .r_v_we0(grp_crypto_sign_ed25519_21_fu_682_r_v_we0),
    .r_v_d0(grp_crypto_sign_ed25519_21_fu_682_r_v_d0),
    .r_v_q0(y_v_q0)
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
        ap_reg_grp_crypto_sign_ed25519_21_fu_682_ap_start <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state18)) begin
            ap_reg_grp_crypto_sign_ed25519_21_fu_682_ap_start <= 1'b1;
        end else if ((1'b1 == grp_crypto_sign_ed25519_21_fu_682_ap_ready)) begin
            ap_reg_grp_crypto_sign_ed25519_21_fu_682_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        i_reg_671 <= i_22_reg_872;
    end else if (((1'b1 == ap_CS_fsm_state19) & (grp_crypto_sign_ed25519_21_fu_682_ap_done == 1'b1))) begin
        i_reg_671 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        i_22_reg_872 <= i_22_fu_693_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) & (exitcond_fu_687_p2 == 1'd0))) begin
        tmp_reg_877[5 : 0] <= tmp_fu_699_p1[5 : 0];
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state20) & (exitcond_fu_687_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state20) & (exitcond_fu_687_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        r_ce0 = 1'b1;
    end else begin
        r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        r_we0 = 1'b1;
    end else begin
        r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        x_v_address0 = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        x_v_address0 = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        x_v_address0 = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        x_v_address0 = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        x_v_address0 = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        x_v_address0 = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        x_v_address0 = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        x_v_address0 = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        x_v_address0 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        x_v_address0 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        x_v_address0 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        x_v_address0 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        x_v_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        x_v_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        x_v_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        x_v_address0 = 64'd0;
    end else begin
        x_v_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        x_v_address1 = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        x_v_address1 = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        x_v_address1 = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        x_v_address1 = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        x_v_address1 = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        x_v_address1 = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        x_v_address1 = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        x_v_address1 = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        x_v_address1 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        x_v_address1 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        x_v_address1 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        x_v_address1 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        x_v_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        x_v_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        x_v_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        x_v_address1 = 64'd1;
    end else begin
        x_v_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        x_v_ce0 = 1'b1;
    end else begin
        x_v_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        x_v_ce1 = 1'b1;
    end else begin
        x_v_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        y_v_address0 = tmp_fu_699_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        y_v_address0 = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        y_v_address0 = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        y_v_address0 = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        y_v_address0 = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        y_v_address0 = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        y_v_address0 = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        y_v_address0 = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        y_v_address0 = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        y_v_address0 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        y_v_address0 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        y_v_address0 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        y_v_address0 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        y_v_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        y_v_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        y_v_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        y_v_address0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        y_v_address0 = grp_crypto_sign_ed25519_21_fu_682_r_v_address0;
    end else begin
        y_v_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        y_v_address1 = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        y_v_address1 = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        y_v_address1 = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        y_v_address1 = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        y_v_address1 = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        y_v_address1 = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        y_v_address1 = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        y_v_address1 = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        y_v_address1 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        y_v_address1 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        y_v_address1 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        y_v_address1 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        y_v_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        y_v_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        y_v_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        y_v_address1 = 64'd1;
    end else begin
        y_v_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state17))) begin
        y_v_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        y_v_ce0 = grp_crypto_sign_ed25519_21_fu_682_r_v_ce0;
    end else begin
        y_v_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state17))) begin
        y_v_ce1 = 1'b1;
    end else begin
        y_v_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state17))) begin
        y_v_d0 = x_v_q0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        y_v_d0 = grp_crypto_sign_ed25519_21_fu_682_r_v_d0;
    end else begin
        y_v_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state17))) begin
        y_v_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        y_v_we0 = grp_crypto_sign_ed25519_21_fu_682_r_v_we0;
    end else begin
        y_v_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state17))) begin
        y_v_we1 = 1'b1;
    end else begin
        y_v_we1 = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if (((1'b1 == ap_CS_fsm_state19) & (grp_crypto_sign_ed25519_21_fu_682_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state20 : begin
            if (((1'b1 == ap_CS_fsm_state20) & (exitcond_fu_687_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
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

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign exitcond_fu_687_p2 = ((i_reg_671 == 6'd32) ? 1'b1 : 1'b0);

assign grp_crypto_sign_ed25519_21_fu_682_ap_start = ap_reg_grp_crypto_sign_ed25519_21_fu_682_ap_start;

assign i_22_fu_693_p2 = (i_reg_671 + 6'd1);

assign r_address0 = tmp_reg_877;

assign r_d0 = y_v_q0[7:0];

assign tmp_fu_699_p1 = i_reg_671;

always @ (posedge ap_clk) begin
    tmp_reg_877[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end

endmodule //crypto_sign_ed25519_9
