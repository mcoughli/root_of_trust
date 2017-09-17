// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// AXILiteS
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of message_addr
//        bit 31~0 - message_addr[31:0] (Read/Write)
// 0x14 : Control signal of message_addr
//        bit 0  - message_addr_ap_vld (Read/Write/SC)
//        others - reserved
// 0x18 : Data signal of num_blocks
//        bit 31~0 - num_blocks[31:0] (Read/Write)
// 0x1c : Control signal of num_blocks
//        bit 0  - num_blocks_ap_vld (Read/Write/SC)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XSHA256_MEM_AXILITES_ADDR_MESSAGE_ADDR_DATA 0x10
#define XSHA256_MEM_AXILITES_BITS_MESSAGE_ADDR_DATA 32
#define XSHA256_MEM_AXILITES_ADDR_MESSAGE_ADDR_CTRL 0x14
#define XSHA256_MEM_AXILITES_ADDR_NUM_BLOCKS_DATA   0x18
#define XSHA256_MEM_AXILITES_BITS_NUM_BLOCKS_DATA   32
#define XSHA256_MEM_AXILITES_ADDR_NUM_BLOCKS_CTRL   0x1c
