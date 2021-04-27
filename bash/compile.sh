if [ $# -ne 3 ]; then
	echo "Need top level module name, source directory, and clock pin"
	exit 1
fi

export top=$1
export source=$(realpath $2)
export clk=$3

cd compilation 

# Compile the Verilog
echo "Compiling"
dc_shell -f ../tcl/DC_script.tcl > compile.txt
grep Error compile.txt

echo 

# Insert Scan
echo "Inserting Scan Cells"
dc_shell -f ../tcl/scan_insertion_DC.tcl > scan.txt
grep Error scan.txt

# Move Required Components for next step
rm -r ../gate/$top
mkdir ../gate/$top > /dev/null
cp ${top}_scan.v ../gate/$top/
cp ${top}.sdf ../gate/$top/
