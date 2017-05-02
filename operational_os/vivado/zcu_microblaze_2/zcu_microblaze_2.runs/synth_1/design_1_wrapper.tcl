# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xczu9eg-ffvb1156-2-i

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.cache/wt [current_project]
set_property parent.project_path /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:zcu102:part0:3.0 [current_project]
set_property ip_output_repo /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.sdk/microblaze_hello_world/Release/microblaze_hello_world.elf
set_property SCOPED_TO_REF design_1 [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.sdk/microblaze_hello_world/Release/microblaze_hello_world.elf]
set_property SCOPED_TO_CELLS microblaze_0 [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.sdk/microblaze_hello_world/Release/microblaze_hello_world.elf]
read_verilog -library xil_defaultlib /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
add_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_rst_ps8_0_99M_0/design_1_rst_ps8_0_99M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_rst_ps8_0_99M_0/design_1_rst_ps8_0_99M_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_rst_ps8_0_99M_0/design_1_rst_ps8_0_99M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/design_1_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_lmb_bram_0/design_1_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_axi_intc_0_0/design_1_axi_intc_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_axi_intc_0_0/design_1_axi_intc_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_axi_intc_0_0/design_1_axi_intc_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_2_0/design_1_axi_uartlite_2_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_2_0/design_1_axi_uartlite_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_2_0/design_1_axi_uartlite_2_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_0/design_1_axi_bram_ctrl_0_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_3/design_1_auto_ds_3_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_3/design_1_auto_ds_3_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_3/design_1_auto_ds_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_2/design_1_auto_pc_2_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_2/design_1_auto_ds_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_2/design_1_auto_ds_2_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_2/design_1_auto_ds_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_1/design_1_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_1/design_1_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_1/design_1_auto_ds_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_0/design_1_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_0/design_1_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/ip/design_1_auto_ds_0/design_1_auto_ds_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files /home/michael/hardware_security/zcu102/root_of_trust/operational_os/vivado/zcu_microblaze_2/zcu_microblaze_2.srcs/sources_1/bd/design_1/design_1.bd]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top design_1_wrapper -part xczu9eg-ffvb1156-2-i


write_checkpoint -force -noxdef design_1_wrapper.dcp

catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }
