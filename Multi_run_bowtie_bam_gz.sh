#!/bin/bash

# This script initializes multiple sbatch runs of Bowtie according to a list of sample IDs

while read SAMPLE; do
	# Create individual sample folders and add mutli-user write capability
	mkdir /work/mc394/NGS_Data/Bowtie/${SAMPLE}
	chmod 0777 /work/mc394/NGS_Data/Bowtie/${SAMPLE}
	# Initiate sbatch session specifying stdout and stderr locations and run Run_bowtie.sbatch
	# for each sample in 
	sbatch -o /work/mc394/NGS_Data/Bowtie/${SAMPLE}/${SAMPLE}.bamout \
	-e /work/mc394/NGS_Data/Bowtie/${SAMPLE}/${SAMPLE}.bamerr \
	Run_bowtie_BAM_gz.sbatch $SAMPLE
done<Bowtie_samplelist.txt
