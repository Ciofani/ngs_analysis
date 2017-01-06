#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --get-user-env
#SBATCH --job-name=samtools_sort_index
#SBATCH --mail-type=END

# This script will sort and index a SAM file located at /work/mc394/NGS_Data/Bowtie
# Resulting files are an unsorted BAM "X.bam", sorted BAM "X.sorted.bam" and a BAM
# index of the sorted file "X.sorted.bai".

samtools sort /work/mc394/NGS_Data/Bowtie/${1}/${1}.bam /work/mc394/NGS_Data/Bowtie/${1}/${1}.sorted

samtools index /work/mc394/NGS_Data/Bowtie/${1}/${1}.sorted.bam \
/work/mc394/NGS_Data/Bowtie/${1}/${1}.sorted.bai
