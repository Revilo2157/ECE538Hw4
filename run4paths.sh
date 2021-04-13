echo Got $# arguments

for (( c=1; c<=$#; c++ ))
do
	echo -n "${!c} "	
done

echo

for (( c=1; c<=$#; c++ ))
do
	echo Doing ${!c}
        export NUM_PATHS=${!c}
	pt_shell -f ./scripts/PT_scriptpd.tcl > "outputs/pathdelay/pt_${NUM_PATHS}.txt"
	tmax -shell ./scripts/path_delay_atpg.tcl > "outputs/pathdelay/tmax_${NUM_PATHS}.txt"
done


echo Done
exit 0
