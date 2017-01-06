#!/bin/bash
	
sed 1d "chipseq_table.txt" | while read LINE; do
TARGET="$(echo $LINE | awk '{ print $1 }')"
CHIP="$(echo $LINE | awk '{ print $2 }')"
INPUT="$(echo $LINE | awk '{ print $3 }')"
NAME="$(echo ${CHIP}_${INPUT})"
echo Submitting: $NAME $TARGET
sbatch --job-name=map_${TARGET} -e ${TARGET}.err -o ${TARGET}.out \
Map_peaks_genes.sbatch $CHIP $INPUT $NAME $TARGET
done
