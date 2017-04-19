-makelib ies/xil_defaultlib -sv \
  "/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "/scratch/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_sim_netlist.v" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_10 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps8_0_100M_0/sim/design_1_rst_ps8_0_100M_0.vhd" \
-endlib
-makelib ies/generic_baseblocks_v2_1_0 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_infrastructure_v1_1_0 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies/axi_register_slice_v2_1_11 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_3 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib ies/axi_data_fifo_v2_1_10 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_crossbar_v2_1_12 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
-endlib
-makelib ies/lib_pkg_v1_0_2 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies/lib_fifo_v1_0_7 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/5ab6/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies/blk_mem_gen_v8_3_5 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/lib_bmg_v1_0_7 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/38e8/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib ies/lib_srl_fifo_v1_0_2 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies/axi_datamover_v5_1_13 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/bf41/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies/axi_vdma_v6_2_10 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl/axi_vdma_v6_2_rfs.v" \
-endlib
-makelib ies/axi_vdma_v6_2_10 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/ed72/hdl/axi_vdma_v6_2_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_vdma_0_0/sim/design_1_axi_vdma_0_0.vhd" \
-endlib
-makelib ies/v_tpg_v7_0_5 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ip/design_1_v_tpg_0_0/hdl/v_tpg_v7_0_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_v_tpg_0_0/sim/design_1_v_tpg_0_0.v" \
-endlib
-makelib ies/v_hdmi_tx_v1_1_0 -sv \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/7739/hdl/v_hdmi_tx_v1_1_rfs.sv" \
-endlib
-makelib ies/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_0/sim/bd_8000_v_hdmi_tx_0.sv" \
-endlib
-makelib ies/axi_lite_ipif_v3_0_4 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies/v_tc_v6_1_10 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/d9f8/hdl/v_tc_v6_1_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_1/sim/bd_8000_v_tc_0.vhd" \
-endlib
-makelib ies/v_vid_in_axi4s_v4_0_5 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/3c71/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \
-endlib
-makelib ies/v_axi4s_vid_out_v4_0_5 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/1923/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_2/sim/bd_8000_v_axi4s_vid_out_0.v" \
-endlib
-makelib ies/util_vector_logic_v2_0 \
  "../../../bd/design_1/ipshared/1d19/hdl/util_vector_logic.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_3/sim/bd_8000_util_vector_logic_0_0.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/ip/ip_4/sim/bd_8000_axi_crossbar_0.v" \
  "../../../bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/bd_0/hdl/bd_8000.v" \
-endlib
-makelib ies/v_hdmi_rx_v1_1_0 -sv \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/303f/hdl/v_hdmi_rx_v1_1_rfs.sv" \
-endlib
-makelib ies/hdcp_v1_0_1 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/846b/hdl/hdcp_v1_0_rfs.v" \
-endlib
-makelib ies/axi_timer_v2_0_13 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/3edf/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies/axi_clock_converter_v2_1_10 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/8479/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/v_axi4s_remap_v1_0_2 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/5b39/hdl/v_axi4s_remap_v1_0_rfs.v" \
-endlib
-makelib ies/interrupt_control_v3_1_4 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/e956/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies/axi_gpio_v2_0_13 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/4f16/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ipshared/e147/xlconstant.v" \
  "../../../bd/design_1/ip/design_1_v_hdmi_tx_ss_0_0_1/sim/design_1_v_hdmi_tx_ss_0_0.v" \
  "../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
-endlib
-makelib ies/axi_protocol_converter_v2_1_11 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/df1b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_dwidth_converter_v2_1_11 \
  "../../../../zcu_hdmi.srcs/sources_1/bd/design_1/ipshared/a4c8/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
  "../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
  "../../../bd/design_1/ip/design_1_auto_ds_1/sim/design_1_auto_ds_1.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
  "../../../bd/design_1/hdl/design_1.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

