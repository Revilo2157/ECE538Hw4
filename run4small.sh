echo Got $# arguments

for (( c=1; c<=$#; c++ ))
do
	echo -n "${!c} "	
done

echo

export CLK_PERIOD=1
echo Clock Period of: $CLK_PERIOD 

for (( c=1; c<=$#; c++ ))
do
	echo Doing ${!c}
	SLACK=${!c}
        export TMGN=$(awk "BEGIN {printf \"%.2f\n \", $CLK_PERIOD * $SLACK / 100}");
	pt_shell -f ./scripts/PT_scriptsd.tcl > "outputs/smalldelay/pt_${SLACK}.txt"
	tmax -shell ./scripts/sddatpg.tcl > "outputs/smalldelay/tmax_${SLACK}.txt"
done


echo Done
exit 0
