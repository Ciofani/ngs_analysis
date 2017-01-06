#!/bin/bash

# This script initializes multiple sbatch runs of Bowtie according to a list of sample IDs

while read SAMPLE; do
	# Create individual sample folders and add mutli-user write capability
	mkdir /work/mc394/NGS_Data/Tophat/${SAMPLE}
	chmod g+rw /work/mc394/NGS_Data/Tophat/${SAMPLE}
	# Initiate sbatch session specifying stdout and stderr locations and run Run_bowtie.sbatch
	# for each sample in 
	sbatch -o /work/mc394/NGS_Data/Tophat/${SAMPLE}/${SAMPLE}.out \
	-e /work/mc394/NGS_Data/Tophat/${SAMPLE}/${SAMPLE}.err \
	Run_tophat.sbatch $SAMPLE
done<Tophat_samplelist.txt
