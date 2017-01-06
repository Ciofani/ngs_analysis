#!/bin/bash

## This script submits mutiple sbatch jobs for htseq-count, must be run from directory containing bam files

for FILE in $(ls *.sorted.bam)
do echo $FILE
FILENAME="${i%.*}"
echo $FILENAME
sbatch -o ${FILENAME}.count.stdout -e ${FILENAME}.count.stderr run_htseq_count.sbatch ./${FILE}
done
