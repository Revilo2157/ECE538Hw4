read_verilog ac97_top_gatelevel_PIPO_DFF.v
set link_library "* Nangate_synthetic_lib.db"
current_design ac97_top
link
set_scan_configuration -style multiplexed_flip_flop
create_clock clk_i -period 10
set target_library Nangate_synthetic_lib.db  
compile -scan -map_effort medium
set_scan_configuration -chain_count 3
create_test_protocol -infer_clock -infer_asynch
dft_drc
report_dft_drc_violations > ac97_DRCviolations.rpt
preview_dft 
insert_dft
report_scan_path > ac97_scanpath_DFFPIPO.rpt
report_area > ac97_dft_DFFPIPO.area_rpt                                                                                     
report_timing > ac97_DFFPIPO.timing_rpt
report_power > ac97_dft_DFFPIPO.power_rpt
write_test_protocol -output ac97_dft_DFFPIPO.spf
write -hierarchy -format verilog -output trial_ac97_dft_DFFPIPO.v
write -hierarchy -format ddc -output ac97_dft_DFFPIPO.ddc
write_sdf -version 2.1 -context verilog ac97_dft_DFFPIPO.sdf 
exit