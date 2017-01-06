#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --get-user-env
#SBATCH --job-name=bam_sort
#SBATCH --output=bam_sort.out
#SBATCH --mail-type=BEGIN

for i in $(ls *.bam)
do echo $i
filename="${i%.*}"
samtools sort ./${i} ${filename}.sorted
done
