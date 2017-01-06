#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --get-user-env
#SBATCH --job-name=SAM_thru_TDF
#SBATCH --mail-type=END

# This script will take a bam file (or sam file) sort it, index it, and create a TDF.

FP="/work/mc394/NGS_Data/Bowtie"

if [ ! -f ${FP}/${1}/${1}.bam ]
then
echo "No BAM found, converting from SAM."
samtools view -bS -o ${FP}/${1}/${1}.bam \
${FP}/${1}/${1}.sam
else
echo "The BAM file exists!"
fi

echo "Sorting the BAM file..."
samtools sort ${FP}/${1}/${1}.bam ${FP}/${1}/${1}.sorted

echo "Indexing the sorted BAM file..."
samtools index ${FP}/${1}/${1}.sorted.bam \
${FP}/${1}/${1}.sorted.bai

echo "Generating a TDF..."
/dscrhome/mc394/IGVTools/igvtools count -z 10 -w 10 -f mean \
${FP}/${1}/${1}.sorted.bam \
${FP}/${1}/${1}.tdf mm10

echo "All done!"
