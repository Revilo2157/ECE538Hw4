set top_module s5378_bench

set scan_lib ./nangate_scan.v
set stil_file  ./des2d1.spf 

read_netlist -delete
# read in scan cell library
read_netlist $scan_lib -library
# read in user's synthesized verilog code
#read_netlist $synthesized_files

read_netlist  s5378_bench.v


run_build_model $top_module
# ignoring warnings like N20 or B10
# Set STIL file from DFT Compiler
set_drc $stil_file
# run check to see if synthesized code violates any testing rules
add_clocks 0  blif_clk_net
add_pi_constraints 0 test_se
run_drc


read_timing ./SDD/slack.dat
set_delay -launch_cycle last_shift
set_faults -model transition
add_faults -all
set_faults -report collapsed
set_faults -summary verbose 
set_delay -max_tmgn $::env(TMGN)
run_atpg basic_scan_only -ndetects 1
report_faults -slack effectiveness  
#report_faults -slack tdet 
#report_faults -slack delta
report_faults -slack sdql
write_patterns ./SDD/pattern_sdd_slack10%.stil -internal -format STIL -unified_stil_flow -replace 


exit
