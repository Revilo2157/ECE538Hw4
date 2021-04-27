if [ $# -ne 2 ]; then
	echo "Need top level module name and source directory"
	exit 1
fi

export top=$1
export source=$(realpath $2)

cd compilation 

# Compile the Verilog
echo "Compiling"
dc_shell -f DC_script.tcl > compile.txt
grep Error compile.txt

# Insert Scan
echo "Inserting Scan Cells"
dc_shell -f scan_insertion_DC.tcl > scan.txt
grep Error scan.txt

mkdir ../gate/$top > /dev/null
cp ${top}_scan.v ../gate/$top
