#!/bin/bash

## This script submits mutiple sbatch jobs for htseq-count, BAM files must be located in the /work/mc394 Tophat directory

while read FILE
do echo Submitting this \file: /work/mc394/NGS_Data/Tophat/${FILE}/accepted_hits.bam
#FILENAME="${i%.*}"
sbatch --job-name=count_${FILE} -o ${FILE}.count.stdout -e ${FILE}.count.stderr Run_htseq_count.sh /work/mc394/NGS_Data/Tophat/${FILE}/accepted_hits.bam ${FILE}
done<For_htseq_count.txt
