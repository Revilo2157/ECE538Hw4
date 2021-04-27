export top=$1
export source=$(realpath $2)

cd compilation 
dc_shell -f DC_script.tcl
dc_shell -f scan_insertion_DC.tcl
cp ${top}_scan.v gate_level
