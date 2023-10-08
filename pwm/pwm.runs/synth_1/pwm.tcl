# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a200tfbg676-2
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:ac701:part0:1.0 [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
read_verilog -library xil_defaultlib C:/Users/HP/pwm/pwm.srcs/sources_1/new/pwm.v
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/HP/pwm/pwm.cache/wt [current_project]
set_property parent.project_dir C:/Users/HP/pwm [current_project]
catch { write_hwdef -file pwm.hwdef }
synth_design -top pwm -part xc7a200tfbg676-2 -gated_clock_conversion on
write_checkpoint pwm.dcp
report_utilization -file pwm_utilization_synth.rpt -pb pwm_utilization_synth.pb