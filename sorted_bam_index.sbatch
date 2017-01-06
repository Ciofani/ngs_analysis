#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --get-user-env
#SBATCH --job-name=bam_index
#SBATCH --output=bam_sort.out
#SBATCH --mail-type=BEGIN

# This script will index all sorted bam files (*.sorted.bam) in the working dir using samtools

for i in $(ls *.sorted.bam)
do echo $i
samtools index $i 
done