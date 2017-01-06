#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH --get-user-env
#SBATCH --job-name=run_rnaseq
#SBATCH --output=${1}tophat.out
#SBATCH --mail-type=ALL

# Add tophat2, bowtie2, and cufflinks2 to path
export PATH=/opt/apps/slurm/bowtie2-2.2.5:/opt/apps/slurm/tophat-2.0.13/bin:/opt/apps/cufflinks-2.1.1:$PATH

# THIS PROGRAMS SPECIFIES .fastq.gz FILENAMES!!! Requires modification for .fastq

# Run tophat
tophat -p 6 -a 10 -g 20 --no-novel-juncs -G /dscrhome/mc394/indexes/Mus_musculus/UCSC/mm10/Annotation/Genes/genes.gtf \
	-o /work/mc394/NGS_Data/Tophat/${1} /dscrhome/mc394/indexes/Mus_musculus/UCSC/mm10/Sequence/Bowtie2Index/genome \
	/work/mc394/NGS_Data/FASTQ/${1}/${1}.fastq.gz
