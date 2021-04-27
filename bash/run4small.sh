if [ $# -ne 1 ]; then 
	echo Not enough arguments
	exit 1
fi

export CLK_PERIOD=$1
echo Clock Period of: $CLK_PERIOD 

export outDir=outputs/smalldelay_${CLK_PERIOD}

rm -r $outDir
mkdir $outDir

for c in {10..30..5}
do
	echo Doing $c
	SLACK=$c
        export TMGN=$(awk "BEGIN {printf \"%.2f\n \", $CLK_PERIOD * $SLACK / 100}");
	
	rm SDD/*	

	pt_shell -f ./scripts/PT_scriptsd.tcl > "${outDir}/pt_${SLACK}.txt"
	echo Finished PrimeTime
	tmax -shell ./scripts/sddatpg.tcl > "${outDir}/tmax_${SLACK}.txt"
	echo Finished TetraMax
done

echo Done
exit 0
