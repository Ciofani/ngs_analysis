#!/bin/bash

# This script initializes multiple sbatch runs of Bowtie according to a list of sample IDs

while read SAMPLE; do
	mkdir /work/mc394/SRA/Tophat/${SAMPLE}
	chmod 0777 /work/mc394/SRA/Tophat/${SAMPLE}
	# Initiate sbatch session specifying stdout and stderr locations and run Run_bowtie.sbatch
	# for each sample in 
	sbatch -o /work/mc394/SRA/Tophat/${SAMPLE}/${SAMPLE}.out \
	-e /work/mc394/SRA/Tophat/${SAMPLE}/${SAMPLE}.err \
	Tophat_sra_PE.sbatch $SAMPLE
done<~/SRA/SRA_List.txt
