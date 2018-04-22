// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// AXILiteS
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
// 0x10 : Data signal of operation
//        bit 31~0 - operation[31:0] (Read/Write)
// 0x14 : Control signal of operation
//        bit 0  - operation_ap_vld (Read/Write/SC)
//        others - reserved
// 0x18 : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[31:0] (Read/Write)
// 0x1c : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[63:32] (Read/Write)
// 0x20 : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[95:64] (Read/Write)
// 0x24 : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[127:96] (Read/Write)
// 0x28 : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[159:128] (Read/Write)
// 0x2c : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[191:160] (Read/Write)
// 0x30 : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[223:192] (Read/Write)
// 0x34 : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[255:224] (Read/Write)
// 0x38 : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[287:256] (Read/Write)
// 0x3c : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[319:288] (Read/Write)
// 0x40 : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[351:320] (Read/Write)
// 0x44 : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[383:352] (Read/Write)
// 0x48 : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[415:384] (Read/Write)
// 0x4c : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[447:416] (Read/Write)
// 0x50 : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[479:448] (Read/Write)
// 0x54 : Data signal of contact_in_V
//        bit 31~0 - contact_in_V[511:480] (Read/Write)
// 0x58 : reserved
// 0x5c : Data signal of db_size_in
//        bit 31~0 - db_size_in[31:0] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of error_out
//        bit 31~0 - error_out[31:0] (Read)
// 0x68 : reserved
// 0x6c : Data signal of contacts_size_out
//        bit 31~0 - contacts_size_out[31:0] (Read)
// 0x70 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCONTACT_DISCOVERY_AXILITES_ADDR_AP_CTRL                0x00
#define XCONTACT_DISCOVERY_AXILITES_ADDR_GIE                    0x04
#define XCONTACT_DISCOVERY_AXILITES_ADDR_IER                    0x08
#define XCONTACT_DISCOVERY_AXILITES_ADDR_ISR                    0x0c
#define XCONTACT_DISCOVERY_AXILITES_ADDR_OPERATION_DATA         0x10
#define XCONTACT_DISCOVERY_AXILITES_BITS_OPERATION_DATA         32
#define XCONTACT_DISCOVERY_AXILITES_ADDR_OPERATION_CTRL         0x14
#define XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA      0x18
#define XCONTACT_DISCOVERY_AXILITES_BITS_CONTACT_IN_V_DATA      512
#define XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACT_IN_V_DATA_     0x40
#define XCONTACT_DISCOVERY_AXILITES_BITS_CONTACT_IN_V_DATA      512
#define XCONTACT_DISCOVERY_AXILITES_ADDR_DB_SIZE_IN_DATA        0x5c
#define XCONTACT_DISCOVERY_AXILITES_BITS_DB_SIZE_IN_DATA        32
#define XCONTACT_DISCOVERY_AXILITES_ADDR_ERROR_OUT_DATA         0x64
#define XCONTACT_DISCOVERY_AXILITES_BITS_ERROR_OUT_DATA         32
#define XCONTACT_DISCOVERY_AXILITES_ADDR_CONTACTS_SIZE_OUT_DATA 0x6c
#define XCONTACT_DISCOVERY_AXILITES_BITS_CONTACTS_SIZE_OUT_DATA 32

