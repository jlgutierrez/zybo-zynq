# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7z010clg400-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.cache/wt [current_project]
set_property parent.project_path /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/ip_repo/myLED_1.0
  /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/ip_repo/myLED_1.0
  /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/lib
} [current_project]
add_files /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/system.bd
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_BTNs_4Bits_0/system_BTNs_4Bits_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_BTNs_4Bits_0/system_BTNs_4Bits_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_BTNs_4Bits_0/system_BTNs_4Bits_0.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_SWs_4Bits_2/system_SWs_4Bits_2_board.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_SWs_4Bits_2/system_SWs_4Bits_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_SWs_4Bits_2/system_SWs_4Bits_2.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_protocol_converter_0_0/system_axi_protocol_converter_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_vdma_0_0/system_axi_vdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_vdma_1_1/system_axi_vdma_1_1.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_vdma_1_1/system_axi_vdma_1_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_axi_vdma_1_1/system_axi_vdma_1_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_xbar_0/system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_xbar_1/system_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_m00_regslice_0/system_m00_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_m01_regslice_0/system_m01_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_m02_regslice_0/system_m02_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_m03_regslice_0/system_m03_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_m04_regslice_0/system_m04_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_m05_regslice_0/system_m05_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_m06_regslice_0/system_m06_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_m07_regslice_0/system_m07_regslice_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/ip/system_s00_mmu_0/system_s00_mmu_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/system_ooc.xdc]
set_property is_locked true [get_files /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/system.bd]

read_verilog -library xil_defaultlib /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/sources_1/bd/system/hdl/system_wrapper.v
read_xdc /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/constrs_1/new/base.xdc
set_property used_in_implementation false [get_files /home/jlgutierrez/Development/zybo-zynq/workspace/zybo_base_system/source/vivado/hw/zybo_bsd/zybo_bsd.srcs/constrs_1/new/base.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
catch { write_hwdef -file system_wrapper.hwdef }
synth_design -top system_wrapper -part xc7z010clg400-1
write_checkpoint -noxdef system_wrapper.dcp
catch { report_utilization -file system_wrapper_utilization_synth.rpt -pb system_wrapper_utilization_synth.pb }