// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1ns/1ps
module ed25519_sign_AXILiteS_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    // axi4 lite slave signals
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    // user signals
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle,
    input  wire [5:0]                    signature_address0,
    input  wire                          signature_ce0,
    input  wire                          signature_we0,
    input  wire [7:0]                    signature_d0,
    output wire [7:0]                    signature_q0,
    output wire [63:0]                   blocks_in,
    output wire                          blocks_in_ap_vld,
    input  wire [4:0]                    public_key_address0,
    input  wire                          public_key_ce0,
    output wire [7:0]                    public_key_q0,
    input  wire [5:0]                    private_key_address0,
    input  wire                          private_key_ce0,
    output wire [7:0]                    private_key_q0
);
//------------------------Address Info-------------------
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x80 : Data signal of blocks_in
//        bit 31~0 - blocks_in[31:0] (Read/Write)
// 0x84 : Data signal of blocks_in
//        bit 31~0 - blocks_in[63:32] (Read/Write)
// 0x88 : Control signal of blocks_in
//        bit 0  - blocks_in_ap_vld (Read/Write/SC)
//        others - reserved
// 0x40 ~
// 0x7f : Memory 'signature' (64 * 8b)
//        Word n : bit [ 7: 0] - signature[4n]
//                 bit [15: 8] - signature[4n+1]
//                 bit [23:16] - signature[4n+2]
//                 bit [31:24] - signature[4n+3]
// 0xa0 ~
// 0xbf : Memory 'public_key' (32 * 8b)
//        Word n : bit [ 7: 0] - public_key[4n]
//                 bit [15: 8] - public_key[4n+1]
//                 bit [23:16] - public_key[4n+2]
//                 bit [31:24] - public_key[4n+3]
// 0xc0 ~
// 0xff : Memory 'private_key' (64 * 8b)
//        Word n : bit [ 7: 0] - private_key[4n]
//                 bit [15: 8] - private_key[4n+1]
//                 bit [23:16] - private_key[4n+2]
//                 bit [31:24] - private_key[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL          = 8'h00,
    ADDR_GIE              = 8'h04,
    ADDR_IER              = 8'h08,
    ADDR_ISR              = 8'h0c,
    ADDR_BLOCKS_IN_DATA_0 = 8'h80,
    ADDR_BLOCKS_IN_DATA_1 = 8'h84,
    ADDR_BLOCKS_IN_CTRL   = 8'h88,
    ADDR_SIGNATURE_BASE   = 8'h40,
    ADDR_SIGNATURE_HIGH   = 8'h7f,
    ADDR_PUBLIC_KEY_BASE  = 8'ha0,
    ADDR_PUBLIC_KEY_HIGH  = 8'hbf,
    ADDR_PRIVATE_KEY_BASE = 8'hc0,
    ADDR_PRIVATE_KEY_HIGH = 8'hff,
    WRIDLE                = 2'd0,
    WRDATA                = 2'd1,
    WRRESP                = 2'd2,
    WRRESET               = 2'd3,
    RDIDLE                = 2'd0,
    RDDATA                = 2'd1,
    RDRESET               = 2'd2,
    ADDR_BITS         = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    wire                          int_ap_idle;
    wire                          int_ap_ready;
    reg                           int_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [63:0]                   int_blocks_in = 'b0;
    reg                           int_blocks_in_ap_vld = 1'b0;
    // memory signals
    wire [3:0]                    int_signature_address0;
    wire                          int_signature_ce0;
    wire                          int_signature_we0;
    wire [3:0]                    int_signature_be0;
    wire [31:0]                   int_signature_d0;
    wire [31:0]                   int_signature_q0;
    wire [3:0]                    int_signature_address1;
    wire                          int_signature_ce1;
    wire                          int_signature_we1;
    wire [3:0]                    int_signature_be1;
    wire [31:0]                   int_signature_d1;
    wire [31:0]                   int_signature_q1;
    reg                           int_signature_read;
    reg                           int_signature_write;
    reg  [1:0]                    int_signature_shift;
    wire [2:0]                    int_public_key_address0;
    wire                          int_public_key_ce0;
    wire                          int_public_key_we0;
    wire [3:0]                    int_public_key_be0;
    wire [31:0]                   int_public_key_d0;
    wire [31:0]                   int_public_key_q0;
    wire [2:0]                    int_public_key_address1;
    wire                          int_public_key_ce1;
    wire                          int_public_key_we1;
    wire [3:0]                    int_public_key_be1;
    wire [31:0]                   int_public_key_d1;
    wire [31:0]                   int_public_key_q1;
    reg                           int_public_key_read;
    reg                           int_public_key_write;
    reg  [1:0]                    int_public_key_shift;
    wire [3:0]                    int_private_key_address0;
    wire                          int_private_key_ce0;
    wire                          int_private_key_we0;
    wire [3:0]                    int_private_key_be0;
    wire [31:0]                   int_private_key_d0;
    wire [31:0]                   int_private_key_q0;
    wire [3:0]                    int_private_key_address1;
    wire                          int_private_key_ce1;
    wire                          int_private_key_we1;
    wire [3:0]                    int_private_key_be1;
    wire [31:0]                   int_private_key_d1;
    wire [31:0]                   int_private_key_q1;
    reg                           int_private_key_read;
    reg                           int_private_key_write;
    reg  [1:0]                    int_private_key_shift;

//------------------------Instantiation------------------
// int_signature
ed25519_sign_AXILiteS_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 16 )
) int_signature (
    .clk0     ( ACLK ),
    .address0 ( int_signature_address0 ),
    .ce0      ( int_signature_ce0 ),
    .we0      ( int_signature_we0 ),
    .be0      ( int_signature_be0 ),
    .d0       ( int_signature_d0 ),
    .q0       ( int_signature_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_signature_address1 ),
    .ce1      ( int_signature_ce1 ),
    .we1      ( int_signature_we1 ),
    .be1      ( int_signature_be1 ),
    .d1       ( int_signature_d1 ),
    .q1       ( int_signature_q1 )
);
// int_public_key
ed25519_sign_AXILiteS_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 8 )
) int_public_key (
    .clk0     ( ACLK ),
    .address0 ( int_public_key_address0 ),
    .ce0      ( int_public_key_ce0 ),
    .we0      ( int_public_key_we0 ),
    .be0      ( int_public_key_be0 ),
    .d0       ( int_public_key_d0 ),
    .q0       ( int_public_key_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_public_key_address1 ),
    .ce1      ( int_public_key_ce1 ),
    .we1      ( int_public_key_we1 ),
    .be1      ( int_public_key_be1 ),
    .d1       ( int_public_key_d1 ),
    .q1       ( int_public_key_q1 )
);
// int_private_key
ed25519_sign_AXILiteS_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 16 )
) int_private_key (
    .clk0     ( ACLK ),
    .address0 ( int_private_key_address0 ),
    .ce0      ( int_private_key_ce0 ),
    .we0      ( int_private_key_we0 ),
    .be0      ( int_private_key_be0 ),
    .d0       ( int_private_key_d0 ),
    .q0       ( int_private_key_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_private_key_address1 ),
    .ce1      ( int_private_key_ce1 ),
    .we1      ( int_private_key_we1 ),
    .be1      ( int_private_key_be1 ),
    .d1       ( int_private_key_d1 ),
    .q1       ( int_private_key_q1 )
);

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_signature_read & !int_public_key_read & !int_private_key_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_BLOCKS_IN_DATA_0: begin
                    rdata <= int_blocks_in[31:0];
                end
                ADDR_BLOCKS_IN_DATA_1: begin
                    rdata <= int_blocks_in[63:32];
                end
                ADDR_BLOCKS_IN_CTRL: begin
                    rdata[0] <= int_blocks_in_ap_vld;
                end
            endcase
        end
        else if (int_signature_read) begin
            rdata <= int_signature_q1;
        end
        else if (int_public_key_read) begin
            rdata <= int_public_key_q1;
        end
        else if (int_private_key_read) begin
            rdata <= int_private_key_q1;
        end
    end
end


//------------------------Register logic-----------------
assign interrupt        = int_gie & (|int_isr);
assign ap_start         = int_ap_start;
assign int_ap_idle      = ap_idle;
assign int_ap_ready     = ap_ready;
assign blocks_in        = int_blocks_in;
assign blocks_in_ap_vld = int_blocks_in_ap_vld;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (int_ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_blocks_in[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_blocks_in[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BLOCKS_IN_DATA_0)
            int_blocks_in[31:0] <= (WDATA[31:0] & wmask) | (int_blocks_in[31:0] & ~wmask);
    end
end

// int_blocks_in[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_blocks_in[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BLOCKS_IN_DATA_1)
            int_blocks_in[63:32] <= (WDATA[31:0] & wmask) | (int_blocks_in[63:32] & ~wmask);
    end
end

// int_blocks_in_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_blocks_in_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BLOCKS_IN_CTRL && WSTRB[0] && WDATA[0])
            int_blocks_in_ap_vld <= 1'b1;
        else
            int_blocks_in_ap_vld <= 1'b0; // self clear
    end
end


//------------------------Memory logic-------------------
// signature
assign int_signature_address0   = signature_address0 >> 2;
assign int_signature_ce0        = signature_ce0;
assign int_signature_we0        = signature_we0;
assign int_signature_be0        = 1 << signature_address0[1:0];
assign int_signature_d0         = {4{signature_d0}};
assign signature_q0             = int_signature_q0 >> (int_signature_shift * 8);
assign int_signature_address1   = ar_hs? raddr[5:2] : waddr[5:2];
assign int_signature_ce1        = ar_hs | (int_signature_write & WVALID);
assign int_signature_we1        = int_signature_write & WVALID;
assign int_signature_be1        = WSTRB;
assign int_signature_d1         = WDATA;
// public_key
assign int_public_key_address0  = public_key_address0 >> 2;
assign int_public_key_ce0       = public_key_ce0;
assign int_public_key_we0       = 1'b0;
assign int_public_key_be0       = 1'b0;
assign int_public_key_d0        = 1'b0;
assign public_key_q0            = int_public_key_q0 >> (int_public_key_shift * 8);
assign int_public_key_address1  = ar_hs? raddr[4:2] : waddr[4:2];
assign int_public_key_ce1       = ar_hs | (int_public_key_write & WVALID);
assign int_public_key_we1       = int_public_key_write & WVALID;
assign int_public_key_be1       = WSTRB;
assign int_public_key_d1        = WDATA;
// private_key
assign int_private_key_address0 = private_key_address0 >> 2;
assign int_private_key_ce0      = private_key_ce0;
assign int_private_key_we0      = 1'b0;
assign int_private_key_be0      = 1'b0;
assign int_private_key_d0       = 1'b0;
assign private_key_q0           = int_private_key_q0 >> (int_private_key_shift * 8);
assign int_private_key_address1 = ar_hs? raddr[5:2] : waddr[5:2];
assign int_private_key_ce1      = ar_hs | (int_private_key_write & WVALID);
assign int_private_key_we1      = int_private_key_write & WVALID;
assign int_private_key_be1      = WSTRB;
assign int_private_key_d1       = WDATA;
// int_signature_read
always @(posedge ACLK) begin
    if (ARESET)
        int_signature_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_SIGNATURE_BASE && raddr <= ADDR_SIGNATURE_HIGH)
            int_signature_read <= 1'b1;
        else
            int_signature_read <= 1'b0;
    end
end

// int_signature_write
always @(posedge ACLK) begin
    if (ARESET)
        int_signature_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_SIGNATURE_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_SIGNATURE_HIGH)
            int_signature_write <= 1'b1;
        else if (WVALID)
            int_signature_write <= 1'b0;
    end
end

// int_signature_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (signature_ce0)
            int_signature_shift <= signature_address0[1:0];
    end
end

// int_public_key_read
always @(posedge ACLK) begin
    if (ARESET)
        int_public_key_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_PUBLIC_KEY_BASE && raddr <= ADDR_PUBLIC_KEY_HIGH)
            int_public_key_read <= 1'b1;
        else
            int_public_key_read <= 1'b0;
    end
end

// int_public_key_write
always @(posedge ACLK) begin
    if (ARESET)
        int_public_key_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_PUBLIC_KEY_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_PUBLIC_KEY_HIGH)
            int_public_key_write <= 1'b1;
        else if (WVALID)
            int_public_key_write <= 1'b0;
    end
end

// int_public_key_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (public_key_ce0)
            int_public_key_shift <= public_key_address0[1:0];
    end
end

// int_private_key_read
always @(posedge ACLK) begin
    if (ARESET)
        int_private_key_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_PRIVATE_KEY_BASE && raddr <= ADDR_PRIVATE_KEY_HIGH)
            int_private_key_read <= 1'b1;
        else
            int_private_key_read <= 1'b0;
    end
end

// int_private_key_write
always @(posedge ACLK) begin
    if (ARESET)
        int_private_key_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_PRIVATE_KEY_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_PRIVATE_KEY_HIGH)
            int_private_key_write <= 1'b1;
        else if (WVALID)
            int_private_key_write <= 1'b0;
    end
end

// int_private_key_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (private_key_ce0)
            int_private_key_shift <= private_key_address0[1:0];
    end
end


endmodule


`timescale 1ns/1ps

module ed25519_sign_AXILiteS_s_axi_ram
#(parameter
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire               we0,
    input  wire [BYTES-1:0]   be0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire               we1,
    input  wire [BYTES-1:0]   be1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------Local signal-------------------
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
// read port 0
always @(posedge clk0) begin
    if (ce0) q0 <= mem[address0];
end

// read port 1
always @(posedge clk1) begin
    if (ce1) q1 <= mem[address1];
end

genvar i;
generate
    for (i = 0; i < BYTES; i = i + 1) begin : gen_write
        // write port 0
        always @(posedge clk0) begin
            if (ce0 & we0 & be0[i]) begin
                mem[address0][8*i+7:8*i] <= d0[8*i+7:8*i];
            end
        end
        // write port 1
        always @(posedge clk1) begin
            if (ce1 & we1 & be1[i]) begin
                mem[address1][8*i+7:8*i] <= d1[8*i+7:8*i];
            end
        end
    end
endgenerate

endmodule

