///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 3.5
//  \   \         Application : 7 Series FPGAs Transceivers  Wizard
//  /   /         Filename : gtwizard_0_gt_usrclk_source.v
// /___/   /\      
// \   \  /  \ 
//  \___\/\___\ 
//
//
// Module gtwizard_0_GT_USRCLK_SOURCE (for use with GTs)
// Generated by Xilinx 7 Series FPGAs Transceivers Wizard
// 
// 
// (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 


`timescale 1ns / 1ps

//***********************************Entity Declaration*******************************

module design_1_vid_phy_controller_0_0_gt_usrclk_source_8series #
(
 
	// HDMI
  parameter C_TX_REFCLK      = 0,
  parameter C_RX_REFCLK      = 1,
  parameter C_DRU_REFCLK     = 1,
  parameter C_Tx_Protocol    = 1,
  parameter C_Rx_Protocol    = 1,
  parameter C_NIDRU          = 1,
  parameter TX_USE_MMCM      = 0,
  parameter RX_USE_MMCM      = 0,
  parameter TX_MMCM_CLKIN_SRC= 0,  //0: OUTCLK or 1:REFCLK 
  parameter RX_MMCM_CLKIN_SRC= 0,  //0: OUTCLK or 1:REFCLK 
  parameter C_INPUT_PIXELS_PER_CLOCK= 4,  //
  parameter ADV_CLOCK_MODE   = 0,
  parameter GTH_TYPE         = 3

) 
(
 
	// HDMI
    input  wire       MMCM_TX_DRP_SCLK,
    input  wire       MMCM_TX_DRP_RST,
    input  wire       MMCM_TX_DRP_SEN,
    output wire       MMCM_TX_DRP_SRDY,
    input  wire [7:0] PROG_TX_CLKFBOUT_MULT,
    input  wire [9:0] PROG_TX_CLKFBOUT_FRAC,
    input  wire [7:0] PROG_TX_DIVCLK_DIVIDE,
    input  wire [7:0] PROG_TX_CLKOUT0_DIVIDE,
    input  wire [9:0] PROG_TX_CLKOUT0_FRAC,
    input  wire [7:0] PROG_TX_CLKOUT1_DIVIDE,
    input  wire [7:0] PROG_TX_CLKOUT2_DIVIDE,

    input  wire       MMCM_RX_DRP_SCLK,
    input  wire       MMCM_RX_DRP_RST,
    input  wire       MMCM_RX_DRP_SEN,
    output wire       MMCM_RX_DRP_SRDY,
    input  wire [7:0] PROG_RX_CLKFBOUT_MULT,
    input  wire [9:0] PROG_RX_CLKFBOUT_FRAC,
    input  wire [7:0] PROG_RX_DIVCLK_DIVIDE,
    input  wire [7:0] PROG_RX_CLKOUT0_DIVIDE,
    input  wire [9:0] PROG_RX_CLKOUT0_FRAC,
    input  wire [7:0] PROG_RX_CLKOUT1_DIVIDE,
    input  wire [7:0] PROG_RX_CLKOUT2_DIVIDE,
	
    input  wire       OBUFTDS_TX_EN,	
	input  wire       OBUFTDS_RX_EN,
    input  wire		  mgtrefclk0_odiv2_in,  
    input  wire		  mgtrefclk1_odiv2_in,  
    input  wire		  gtnorthrefclk0_odiv2_in,  
    input  wire		  gtnorthrefclk1_odiv2_in,  
    input  wire		  gtsouthrefclk0_odiv2_in,  
    input  wire		  gtsouthrefclk1_odiv2_in,  
    input  wire		  GT0_TX_MMCM_PWRDN_IN,  
    input  wire		  GT0_RX_MMCM_PWRDN_IN, 		     
	

    input  wire		  mgtrefclk0_in,  
    input  wire		  mgtrefclk1_in,  
    input  wire		  Q0_CLK0_GTREFCLK_PAD_N_IN,
    input  wire		  Q0_CLK0_GTREFCLK_PAD_P_IN,
 
    input  wire		  Q0_CLK0_GTREFCLK_IBUF_EN_IN,
    output wire		  Q0_CLK0_GTREFCLK_OUT,
    input  wire		  Q0_CLK1_GTREFCLK_PAD_N_IN,
    input  wire		  Q0_CLK1_GTREFCLK_PAD_P_IN,
 
    input  wire		  Q0_CLK1_GTREFCLK_IBUF_EN_IN,
    output wire		  Q0_CLK1_GTREFCLK_OUT,

    input  wire       BUFGT_TXUSRCLK_CLEAR,
    input  wire [2:0] BUFGT_TXUSRCLK_DIV,
    input  wire       BUFGT_RXUSRCLK_CLEAR,
    input  wire [2:0] BUFGT_RXUSRCLK_DIV,
    output wire       TXUSRCLK_ACTIVE_OUT,
    output wire       RXUSRCLK_ACTIVE_OUT,

    output wire		  GT0_TXCLK_LOCK_OUT,
    input  wire		  GT0_TX_MMCM_RESET_IN,    
	
 
	// HDMI
    output wire		  GT0_RXCLK_LOCK_OUT,
    input  wire		  GT0_RX_MMCM_RESET_IN,    
			          
    output wire		  GT0_TX_MMCM_CLKOUT1_OUT,
    output wire		  GT0_TX_MMCM_CLKOUT2_OUT,
    output wire		  GT0_RX_MMCM_CLKOUT1_OUT,
    output wire		  GT0_RX_MMCM_CLKOUT2_OUT,
	
    output wire		  Q0_CLK0_GTREFCLK_ODIV2_OUT,
    output wire		  Q0_CLK1_GTREFCLK_ODIV2_OUT,
    output wire		  GT0_TX_MMCM_CLKOUT1_P_OUT,
    output wire		  GT0_TX_MMCM_CLKOUT1_N_OUT,
    output wire		  GT0_RX_MMCM_CLKOUT1_P_OUT,
    output wire		  GT0_RX_MMCM_CLKOUT1_N_OUT,		
	
 

    output wire		  GT0_TXUSRCLK_OUT,
    output wire		  GT0_TXUSRCLK2_OUT,
    input  wire		  GT0_TXOUTCLK_IN,
    output wire		  GT0_RXUSRCLK_OUT,
    output wire		  GT0_RXUSRCLK2_OUT,
    input  wire		  GT0_RXOUTCLK_IN

);


	`define DLY #1
	localparam GTREFCLK0 = 0;
	localparam GTREFCLK1 = 1;
	localparam GTNORTHREFCLK0 = 2;
	localparam GTNORTHREFCLK1 = 3;
	localparam GTSOUTHREFCLK0 = 4;
	localparam GTSOUTHREFCLK1 = 5;

//*********************************Wire Declarations**********************************
    wire            tied_to_ground_i;
    wire            tied_to_vcc_i;
 
    wire            gt0_txoutclk_i; 
    wire            gt0_rxoutclk_i;
    wire            q0_clk1_gtrefclk; 
    wire            q0_clk0_gtrefclk;

    wire            gt0_txusrclk_i;
    wire            gt0_txoutclk_i_bufgt;
    wire            gt0_rxusrclk_i;
    wire            txoutclk_mmcm0_locked_i;
    wire            txoutclk_mmcm0_reset_i;
 	
	// HDMI
    wire            rxoutclk_mmcm0_locked_i;
    wire            rxoutclk_mmcm0_reset_i;
    wire            q0_clk1_gtrefclk_div1; 
    wire            q0_clk0_gtrefclk_div1;
    wire            q0_clk1_gtrefclk_div1_i; 
    wire            q0_clk0_gtrefclk_div1_i;
 
//*********************************** Beginning of Code *******************************

    //  Static signal Assigments    
    assign tied_to_ground_i             = 1'b0;
    assign tied_to_vcc_i                = 1'b1;
    assign gt0_txoutclk_i = GT0_TXOUTCLK_IN;
    assign gt0_rxoutclk_i = GT0_RXOUTCLK_IN;
     
    assign Q0_CLK0_GTREFCLK_OUT = (ADV_CLOCK_MODE)?mgtrefclk0_in:q0_clk0_gtrefclk;
    assign Q0_CLK1_GTREFCLK_OUT = (ADV_CLOCK_MODE)?mgtrefclk1_in:q0_clk1_gtrefclk;
 
    assign Q0_CLK0_GTREFCLK_ODIV2_OUT = (ADV_CLOCK_MODE)?mgtrefclk0_odiv2_in:q0_clk0_gtrefclk_div1;
    assign Q0_CLK1_GTREFCLK_ODIV2_OUT = (ADV_CLOCK_MODE)?mgtrefclk1_odiv2_in:q0_clk1_gtrefclk_div1;	
 	
	
    generate
      if (ADV_CLOCK_MODE==0 && GTH_TYPE==3) begin : gen_standard_clocking

 
		if ((C_Tx_Protocol==1 && C_TX_REFCLK==GTREFCLK0) || (C_Rx_Protocol==1 && (C_RX_REFCLK==GTREFCLK0 || (C_DRU_REFCLK == GTREFCLK0 && C_NIDRU == 1)))) begin
 
			// Differential reference clock buffer for MGTREFCLK0
			IBUFDS_GTE3 #(
			  .REFCLK_EN_TX_PATH  (1'b0),
			  .REFCLK_HROW_CK_SEL (2'b00),
			  .REFCLK_ICNTL_RX    (2'b00)
			) IBUFDS_GTE3_MGTREFCLK0_INST (
			  .I     (Q0_CLK0_GTREFCLK_PAD_P_IN),
			  .IB    (Q0_CLK0_GTREFCLK_PAD_N_IN),
 
				// HDMI
			  .CEB   (Q0_CLK0_GTREFCLK_IBUF_EN_IN),
			  .O     (q0_clk0_gtrefclk),
			  .ODIV2 (q0_clk0_gtrefclk_div1_i)
 
			);
 
		end else begin
			assign q0_clk0_gtrefclk = 1'b0;
		end
 
        
 
		if ((C_Tx_Protocol==1 && C_TX_REFCLK==GTREFCLK1) || (C_Rx_Protocol==1 && (C_RX_REFCLK==GTREFCLK1 || (C_DRU_REFCLK == GTREFCLK1 && C_NIDRU == 1)))) begin
 
			// Differential reference clock buffer for MGTREFCLK1
			IBUFDS_GTE3 #(
			  .REFCLK_EN_TX_PATH  (1'b0),
			  .REFCLK_HROW_CK_SEL (2'b00),
			  .REFCLK_ICNTL_RX    (2'b00)
			) IBUFDS_GTE3_MGTREFCLK1_INST (
			  .I     (Q0_CLK1_GTREFCLK_PAD_P_IN),
			  .IB    (Q0_CLK1_GTREFCLK_PAD_N_IN),
 
				// HDMI
			  .CEB   (Q0_CLK1_GTREFCLK_IBUF_EN_IN),
			  .O     (q0_clk1_gtrefclk),
			  .ODIV2 (q0_clk1_gtrefclk_div1_i)
 
			);
 
		end else begin
			assign q0_clk1_gtrefclk = 1'b0;
		end
 
			
      end else if (ADV_CLOCK_MODE==0 && GTH_TYPE==4) begin

 
		if ((C_Tx_Protocol==1 && C_TX_REFCLK==GTREFCLK0) || (C_Rx_Protocol==1 && (C_RX_REFCLK==GTREFCLK0 || (C_DRU_REFCLK == GTREFCLK0 && C_NIDRU == 1)))) begin
 
			// Differential reference clock buffer for MGTREFCLK0
			IBUFDS_GTE4 #(
			  .REFCLK_EN_TX_PATH  (1'b0),
			  .REFCLK_HROW_CK_SEL (2'b00),
			  .REFCLK_ICNTL_RX    (2'b00)
			) IBUFDS_GTE4_MGTREFCLK0_INST (
			  .I     (Q0_CLK0_GTREFCLK_PAD_P_IN),
			  .IB    (Q0_CLK0_GTREFCLK_PAD_N_IN),
 
				// HDMI
			  .CEB   (Q0_CLK0_GTREFCLK_IBUF_EN_IN),
			  .O     (q0_clk0_gtrefclk),
			  .ODIV2 (q0_clk0_gtrefclk_div1_i)
 
			);
 
		end else begin
			assign q0_clk0_gtrefclk = 1'b0;
		end
 
        
 
		if ((C_Tx_Protocol==1 && C_TX_REFCLK==GTREFCLK1) || (C_Rx_Protocol==1 && (C_RX_REFCLK==GTREFCLK1 || (C_DRU_REFCLK == GTREFCLK1 && C_NIDRU == 1)))) begin
 
			// Differential reference clock buffer for MGTREFCLK1
			IBUFDS_GTE4 #(
			  .REFCLK_EN_TX_PATH  (1'b0),
			  .REFCLK_HROW_CK_SEL (2'b00),
			  .REFCLK_ICNTL_RX    (2'b00)
			) IBUFDS_GTE4_MGTREFCLK1_INST (
			  .I     (Q0_CLK1_GTREFCLK_PAD_P_IN),
			  .IB    (Q0_CLK1_GTREFCLK_PAD_N_IN),
 
				// HDMI
			  .CEB   (Q0_CLK1_GTREFCLK_IBUF_EN_IN),
			  .O     (q0_clk1_gtrefclk),
			  .ODIV2 (q0_clk1_gtrefclk_div1_i)
 
			);
 
		end else begin
			assign q0_clk1_gtrefclk = 1'b0;
		end
 

      end else begin
        assign q0_clk0_gtrefclk = 1'b0;
        assign q0_clk1_gtrefclk = 1'b0;
      end // if
    endgenerate

 	

 
 
    generate
		if ((C_Tx_Protocol==1 && C_TX_REFCLK==GTREFCLK0) || (C_Rx_Protocol==1 && (C_RX_REFCLK==GTREFCLK0 || (C_DRU_REFCLK == GTREFCLK0 && C_NIDRU == 1)))) begin

             // Drive GTREFCLK0_ODIV2 with BUFG_GT-buffered source clock
             // frequency ratio
             wire CESYNC_gtrefclk0_odiv2;
             wire CLRSYNC_gtrefclk0_odiv2;
             BUFG_GT_SYNC bufg_gt_sync_gtrefclk0_odiv2_inst (
            	.CESYNC(CESYNC_gtrefclk0_odiv2),   // 1-bit output: Synchronized CE
            	.CLRSYNC(CLRSYNC_gtrefclk0_odiv2), // 1-bit output: Synchronized CLR
            	.CE(1'b1),           // 1-bit input: Asynchronous enable
            	.CLK(q0_clk0_gtrefclk_div1_i),         // 1-bit input: Clock
            	.CLR(1'b0)          // 1-bit input: Asynchronous clear
             );
            
              BUFG_GT bufg_gt_gtrefclk0_odiv2_inst (
            	.CE      (CESYNC_gtrefclk0_odiv2),
            	.CEMASK  (1'b0),
            	.CLR     (CLRSYNC_gtrefclk0_odiv2),
            	.CLRMASK (1'b0),
            	.DIV     (3'b0),
            	.I       (q0_clk0_gtrefclk_div1_i),
            	.O       (q0_clk0_gtrefclk_div1)
              );
        end else begin
             assign q0_clk0_gtrefclk_div1 = 1'b0;
        end 
	
		if ((C_Tx_Protocol==1 && C_TX_REFCLK==GTREFCLK1) || (C_Rx_Protocol==1 && (C_RX_REFCLK==GTREFCLK1 || (C_DRU_REFCLK == GTREFCLK1 && C_NIDRU == 1)))) begin
              // Drive GTREFCLK1_ODIV2 with BUFG_GT-buffered source clock
              // frequency ratio
             wire CESYNC_gtrefclk1_odiv2;
             wire CLRSYNC_gtrefclk1_odiv2;
             BUFG_GT_SYNC bufg_gt_sync_gtrefclk1_odiv2_inst (
            	.CESYNC(CESYNC_gtrefclk1_odiv2),   // 1-bit output: Synchronized CE
            	.CLRSYNC(CLRSYNC_gtrefclk1_odiv2), // 1-bit output: Synchronized CLR
            	.CE(1'b1),           // 1-bit input: Asynchronous enable
            	.CLK(q0_clk1_gtrefclk_div1_i),         // 1-bit input: Clock
            	.CLR(1'b0)          // 1-bit input: Asynchronous clear
             );
            
              BUFG_GT bufg_gt_gtrefclk1_odiv2_inst (
            	.CE      (CESYNC_gtrefclk1_odiv2),
            	.CEMASK  (1'b0),
            	.CLR     (CLRSYNC_gtrefclk1_odiv2),
            	.CLRMASK (1'b0),
            	.DIV     (3'b0),
            	.I       (q0_clk1_gtrefclk_div1_i),
            	.O       (q0_clk1_gtrefclk_div1)
              );
        end else begin
             assign q0_clk1_gtrefclk_div1 = 1'b0;
        end 
 	
    endgenerate
  

 
	// HDMI
    // Instantiate a MMCM module to divide the reference clock. Uses internal feedback
    // for improved jitter performance, and to avoid consuming an additional BUFG
    generate
        if (TX_USE_MMCM==1 && C_Tx_Protocol==1) begin : tx_mmcm

      // Drive TXUSRCLK with BUFG_GT-buffered source clock, dividing the input by the integral source clock to TXUSRCLK
      // frequency ratio
     wire CESYNC_tx_usrclk;
     wire CLRSYNC_tx_usrclk;
     BUFG_GT_SYNC bufg_gt_sync_tx_usrclk_inst (
    	.CESYNC(CESYNC_tx_usrclk),   // 1-bit output: Synchronized CE
    	.CLRSYNC(CLRSYNC_tx_usrclk), // 1-bit output: Synchronized CLR
    	.CE(1'b1),           // 1-bit input: Asynchronous enable
    	.CLK(gt0_txoutclk_i),         // 1-bit input: Clock
    	.CLR(BUFGT_TXUSRCLK_CLEAR)          // 1-bit input: Asynchronous clear
     );
    
      BUFG_GT bufg_gt_tx_usrclk_inst (
    	.CE      (CESYNC_tx_usrclk),
    	.CEMASK  (1'b0),
    	.CLR     (CLRSYNC_tx_usrclk),
    	.CLRMASK (1'b0),
    	.DIV     (BUFGT_TXUSRCLK_DIV),
    	.I       (gt0_txoutclk_i),
    	.O       (gt0_txusrclk_i)
      );

     	  wire[15:0] TX_DO;
          wire       TX_DRDY;
          wire       TX_LOCKED;
          wire       TX_DWE;
          wire       TX_DEN;
          wire[6:0]  TX_DADDR;
          wire[15:0] TX_DI;
          wire       TX_DCLK;
          wire       TX_RST_MMCM;
          wire       gt0_txmmcm_clkin_i;
          wire       gt0_txmmcm_clkout1_oddr_data_i;
		  
          assign TX_LOCKED = txoutclk_mmcm0_locked_i;
 

          design_1_vid_phy_controller_0_0_mmcme3_drp mmcme3_drp_inst
          (
            .SADDR               (1'b0),
 
            .SEN                 (MMCM_TX_DRP_SEN),
            .SCLK                (MMCM_TX_DRP_SCLK),
            .RST                 (MMCM_TX_DRP_RST), 
            .SRDY                (MMCM_TX_DRP_SRDY), 
            .PROG_CLKFBOUT_MULT  (PROG_TX_CLKFBOUT_MULT),
            .PROG_CLKFBOUT_FRAC  (PROG_TX_CLKFBOUT_FRAC),
            .PROG_DIVCLK_DIVIDE  (PROG_TX_DIVCLK_DIVIDE),
            .PROG_CLKOUT0_DIVIDE (PROG_TX_CLKOUT0_DIVIDE),
            .PROG_CLKOUT0_FRAC   (PROG_TX_CLKOUT0_FRAC),
            .PROG_CLKOUT1_DIVIDE (PROG_TX_CLKOUT1_DIVIDE),
            .PROG_CLKOUT2_DIVIDE (PROG_TX_CLKOUT2_DIVIDE),
            .DO                  (TX_DO),
            .DRDY                (TX_DRDY),
            .LOCKED              (TX_LOCKED),
            .DWE                 (TX_DWE),
            .DEN                 (TX_DEN),
            .DADDR               (TX_DADDR),
            .DI                  (TX_DI),
            .DCLK                (TX_DCLK),
            .RST_MMCM            (TX_RST_MMCM)   
		
          );

 
		// HDMI
           assign  txoutclk_mmcm0_reset_i =  GT0_TX_MMCM_RESET_IN | TX_RST_MMCM;

           if      (C_TX_REFCLK == GTREFCLK0)      assign gt0_txmmcm_clkin_i = q0_clk0_gtrefclk_div1;
           else if (C_TX_REFCLK == GTREFCLK1)      assign gt0_txmmcm_clkin_i = q0_clk1_gtrefclk_div1;
           else if (C_TX_REFCLK == GTNORTHREFCLK0) assign gt0_txmmcm_clkin_i = gtnorthrefclk0_odiv2_in;
           else if (C_TX_REFCLK == GTNORTHREFCLK1) assign gt0_txmmcm_clkin_i = gtnorthrefclk1_odiv2_in; 
           else if (C_TX_REFCLK == GTSOUTHREFCLK0) assign gt0_txmmcm_clkin_i = gtsouthrefclk0_odiv2_in;
           else if (C_TX_REFCLK == GTSOUTHREFCLK1) assign gt0_txmmcm_clkin_i = gtsouthrefclk1_odiv2_in;
           vid_phy_controller_v2_0_4_CLOCK_MODULE_8series #
           (
               .MULT                           (4),
               .DIVIDE                         (1),
               .CLK_PERIOD                     (3.367),
               .OUT0_DIVIDE                    (8),
               .OUT1_DIVIDE                    (4),
 
               .OUT2_DIVIDE                    (4),
               .OUT3_DIVIDE                    (12)
           )
	
           txoutclk_mmcm0_i
           (
			// HDMI
               .CLK0_OUT                       (),
               .CLK1_OUT                       (GT0_TX_MMCM_CLKOUT1_OUT),
               .CLK2_OUT                       (GT0_TX_MMCM_CLKOUT2_OUT),
               .CLK3_OUT                       (),
               .CLK_IN                         ((TX_MMCM_CLKIN_SRC==0)?gt0_txoutclk_i:gt0_txmmcm_clkin_i),
               .DCLK                           (TX_DCLK),
               .DWE                            (TX_DWE),
               .DEN                            (TX_DEN),
               .DADDR                          (TX_DADDR),
               .DI                             (TX_DI),
               .DRDY                           (TX_DRDY),
               .DO                             (TX_DO),
               .MMCM_PWRDN_IN                  (GT0_TX_MMCM_PWRDN_IN),
               .MMCM_LOCKED_OUT                (txoutclk_mmcm0_locked_i),
               .MMCM_RESET_IN                  (txoutclk_mmcm0_reset_i)
           );

 	
	   
           // TX CLKOUT1 clock driver
           ODDRE1
           #(
               .IS_C_INVERTED   (1'b0),
               .IS_D1_INVERTED  (1'b0),
               .IS_D2_INVERTED  (1'b0),
               .SRVAL           (1'b0) 
           )
           GT0_TX_MMCM_CLKOUT1_ODDR_INST
           (
               .Q				(gt0_txmmcm_clkout1_oddr_data_i),
               .C				(GT0_TX_MMCM_CLKOUT1_OUT),
               .D1				(1'b1),
               .D2				(1'b0),
               .SR				(1'b0) 
           );

           // TX CLKOUT1 clock buffer
           OBUFTDS
           #(
           	.IOSTANDARD		("DEFAULT"),
           	.SLEW			("FAST")    
           )
           GT0_TX_MMCM_CLKOUT1_OBUFTDS_INST
           (
               .I			(gt0_txmmcm_clkout1_oddr_data_i),
               .T			(~OBUFTDS_TX_EN), // 3-state enable input (high disables output buffer)
               .O			(GT0_TX_MMCM_CLKOUT1_P_OUT),
               .OB			(GT0_TX_MMCM_CLKOUT1_N_OUT) 
           );		   
		   
    end else begin
	
	    assign GT0_TX_MMCM_CLKOUT1_OUT   = 1'b0;
	    assign GT0_TX_MMCM_CLKOUT2_OUT   = 1'b0;
	    assign gt0_txusrclk_i            = 1'b0;
	    assign txoutclk_mmcm0_locked_i   = 1'b0;
	    assign GT0_TX_MMCM_CLKOUT1_P_OUT = 1'b0;
	    assign GT0_TX_MMCM_CLKOUT1_N_OUT = 1'b0;
		
	end
    endgenerate

	// HDMI
    // Instantiate a MMCM module to divide the reference clock. Uses internal feedback
    // for improved jitter performance, and to avoid consuming an additional BUFG
    generate
        if (RX_USE_MMCM==1 && C_Rx_Protocol==1) begin : rx_mmcm

         // Drive RXUSRCLK with BUFG_GT-buffered source clock, dividing the input by the integral source clock to RXUSRCLK
         // frequency ratio
        wire CESYNC_rx_usrclk;
        wire CLRSYNC_rx_usrclk;
        BUFG_GT_SYNC bufg_gt_sync_rx_usrclk_inst (
           .CESYNC(CESYNC_rx_usrclk),   // 1-bit output: Synchronized CE
           .CLRSYNC(CLRSYNC_rx_usrclk), // 1-bit output: Synchronized CLR
           .CE(1'b1),           // 1-bit input: Asynchronous enable
           .CLK(gt0_rxoutclk_i),         // 1-bit input: Clock
           .CLR(BUFGT_RXUSRCLK_CLEAR)          // 1-bit input: Asynchronous clear
        );
        
         BUFG_GT bufg_gt_rx_usrclk_inst (
           .CE      (CESYNC_rx_usrclk),
           .CEMASK  (1'b0),
           .CLR     (CLRSYNC_rx_usrclk),
           .CLRMASK (1'b0),
           .DIV     (BUFGT_RXUSRCLK_DIV),
           .I       (gt0_rxoutclk_i),
           .O       (gt0_rxusrclk_i)
         );

          wire[15:0] RX_DO;
          wire       RX_DRDY;
          wire       RX_LOCKED;
          wire       RX_DWE;
          wire       RX_DEN;
          wire[6:0]  RX_DADDR;
          wire[15:0] RX_DI;
          wire       RX_DCLK;
          wire       RX_RST_MMCM;
          wire       gt0_rxmmcm_clkin_i;
          wire       gt0_rxmmcm_clkout1_oddr_data_i;
		  
          assign RX_LOCKED = rxoutclk_mmcm0_locked_i;
          design_1_vid_phy_controller_0_0_mmcme3_drp mmcme3_drp_inst
          (
            .SADDR               (1'b0),
            .SEN                 (MMCM_RX_DRP_SEN),
            .SCLK                (MMCM_RX_DRP_SCLK),
            .RST                 (MMCM_RX_DRP_RST), 
            .SRDY                (MMCM_RX_DRP_SRDY), 
            .PROG_CLKFBOUT_MULT  (PROG_RX_CLKFBOUT_MULT),
            .PROG_CLKFBOUT_FRAC  (PROG_RX_CLKFBOUT_FRAC),
            .PROG_DIVCLK_DIVIDE  (PROG_RX_DIVCLK_DIVIDE),
            .PROG_CLKOUT0_DIVIDE (PROG_RX_CLKOUT0_DIVIDE),
            .PROG_CLKOUT0_FRAC   (PROG_RX_CLKOUT0_FRAC),
            .PROG_CLKOUT1_DIVIDE (PROG_RX_CLKOUT1_DIVIDE),
            .PROG_CLKOUT2_DIVIDE (PROG_RX_CLKOUT2_DIVIDE),
            .DO                  (RX_DO),
            .DRDY                (RX_DRDY),
            .LOCKED              (RX_LOCKED),
            .DWE                 (RX_DWE),
            .DEN                 (RX_DEN),
            .DADDR               (RX_DADDR),
            .DI                  (RX_DI),
            .DCLK                (RX_DCLK),
            .RST_MMCM            (RX_RST_MMCM)    
          );


           assign  rxoutclk_mmcm0_reset_i =  GT0_RX_MMCM_RESET_IN | RX_RST_MMCM;
		   
           if      (C_RX_REFCLK == GTREFCLK0)      assign gt0_rxmmcm_clkin_i = q0_clk0_gtrefclk_div1;
           else if (C_RX_REFCLK == GTREFCLK1)      assign gt0_rxmmcm_clkin_i = q0_clk1_gtrefclk_div1;
           else if (C_RX_REFCLK == GTNORTHREFCLK0) assign gt0_rxmmcm_clkin_i = gtnorthrefclk0_odiv2_in;
           else if (C_RX_REFCLK == GTNORTHREFCLK1) assign gt0_rxmmcm_clkin_i = gtnorthrefclk1_odiv2_in; 
           else if (C_RX_REFCLK == GTSOUTHREFCLK0) assign gt0_rxmmcm_clkin_i = gtsouthrefclk0_odiv2_in;
           else if (C_RX_REFCLK == GTSOUTHREFCLK1) assign gt0_rxmmcm_clkin_i = gtsouthrefclk1_odiv2_in;
           vid_phy_controller_v2_0_4_CLOCK_MODULE_8series #
           (
               .MULT                           (4),
               .DIVIDE                         (1),
               .CLK_PERIOD                     (3.367),
               .OUT0_DIVIDE                    (8),
               .OUT1_DIVIDE                    (4),
 
               .OUT2_DIVIDE                    (4),
	
               .OUT3_DIVIDE                    (12)
           )
           rxoutclk_mmcm0_i
           (
               .CLK0_OUT                       (),
               .CLK1_OUT                       (GT0_RX_MMCM_CLKOUT1_OUT),
               .CLK2_OUT                       (GT0_RX_MMCM_CLKOUT2_OUT),
               .CLK3_OUT                       (),
               .CLK_IN                         ((RX_MMCM_CLKIN_SRC==0)?gt0_rxoutclk_i:gt0_rxmmcm_clkin_i),
               .DCLK                           (RX_DCLK),
               .DWE                            (RX_DWE),
               .DEN                            (RX_DEN),
               .DADDR                          (RX_DADDR),
               .DI                             (RX_DI),
               .DRDY                           (RX_DRDY),
               .DO                             (RX_DO),
               .MMCM_LOCKED_OUT                (rxoutclk_mmcm0_locked_i),
               .MMCM_PWRDN_IN                  (GT0_RX_MMCM_PWRDN_IN),
               .MMCM_RESET_IN                  (rxoutclk_mmcm0_reset_i)
           );

           // RX CLKOUT1 clock driver
           ODDRE1
           #(
               .IS_C_INVERTED   (1'b0),
               .IS_D1_INVERTED  (1'b0),
               .IS_D2_INVERTED  (1'b0),
               .SRVAL           (1'b0) 
           )
           GT0_RX_MMCM_CLKOUT1_ODDR_INST
           (
               .Q				(gt0_rxmmcm_clkout1_oddr_data_i),
               .C				(GT0_RX_MMCM_CLKOUT1_OUT),
               .D1				(1'b1),
               .D2				(1'b0),
               .SR				(1'b0) 
           );
           
           // RX CLKOUT1 clock buffer
           OBUFTDS
           #(
           	.IOSTANDARD		("DEFAULT"),
           	.SLEW			("FAST")    
           )
           GT0_RX_MMCM_CLKOUT1_OBUFTDS_INST
           (
               .I			(gt0_rxmmcm_clkout1_oddr_data_i),
               .T			(~OBUFTDS_RX_EN), // 3-state enable input (high disables output buffer)
               .O			(GT0_RX_MMCM_CLKOUT1_P_OUT),
               .OB			(GT0_RX_MMCM_CLKOUT1_N_OUT) 
           );		   
		   
    end else begin
	
	    assign GT0_RX_MMCM_CLKOUT1_OUT   = 1'b0;
	    assign GT0_RX_MMCM_CLKOUT2_OUT   = 1'b0;
	    assign gt0_rxusrclk_i            = 1'b0;
	    assign rxoutclk_mmcm0_locked_i   = 1'b0;
	    assign GT0_RX_MMCM_CLKOUT1_P_OUT = 1'b0;
	    assign GT0_RX_MMCM_CLKOUT1_N_OUT = 1'b0;
		
    end    
    endgenerate

// Clock active assignment
  (* ASYNC_REG = "TRUE" *) reg gtwiz_userclk_tx_active_meta = 1'b0;
  (* ASYNC_REG = "TRUE" *) reg gtwiz_userclk_tx_active_sync = 1'b0;
  always @(posedge GT0_TXUSRCLK2_OUT, posedge BUFGT_TXUSRCLK_CLEAR) begin
    if (BUFGT_TXUSRCLK_CLEAR) begin
      gtwiz_userclk_tx_active_meta <= 1'b0;
      gtwiz_userclk_tx_active_sync <= 1'b0;
    end
    else begin
      gtwiz_userclk_tx_active_meta <= 1'b1;
      gtwiz_userclk_tx_active_sync <= gtwiz_userclk_tx_active_meta;
    end
  end
  assign TXUSRCLK_ACTIVE_OUT = gtwiz_userclk_tx_active_sync;

  (* ASYNC_REG = "TRUE" *) reg gtwiz_userclk_rx_active_meta = 1'b0;
  (* ASYNC_REG = "TRUE" *) reg gtwiz_userclk_rx_active_sync = 1'b0;
  always @(posedge GT0_RXUSRCLK2_OUT, posedge BUFGT_RXUSRCLK_CLEAR) begin
    if (BUFGT_RXUSRCLK_CLEAR) begin
      gtwiz_userclk_rx_active_meta <= 1'b0;
      gtwiz_userclk_rx_active_sync <= 1'b0;
    end
    else begin
      gtwiz_userclk_rx_active_meta <= 1'b1;
      gtwiz_userclk_rx_active_sync <= gtwiz_userclk_rx_active_meta;
    end
  end
  assign RXUSRCLK_ACTIVE_OUT = gtwiz_userclk_rx_active_sync;

// Output clock assignments 
assign GT0_TXUSRCLK_OUT   = gt0_txusrclk_i;
assign GT0_TXUSRCLK2_OUT  = gt0_txusrclk_i;
assign GT0_RXUSRCLK_OUT   = gt0_rxusrclk_i;
assign GT0_RXUSRCLK2_OUT  = gt0_rxusrclk_i;
assign GT0_TXCLK_LOCK_OUT = txoutclk_mmcm0_locked_i;
assign GT0_RXCLK_LOCK_OUT = rxoutclk_mmcm0_locked_i;

endmodule
