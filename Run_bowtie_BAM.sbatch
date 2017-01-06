#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3
#SBATCH --get-user-env
#SBATCH --job-name=run_bowtie
#SBATCH --mail-type=END

# Add tophat2, bowtie2, and cufflinks2 to path
export PATH=/opt/apps/slurm/bowtie2-2.2.5:/opt/apps/slurm/tophat-2.0.13/bin:/opt/apps/cufflinks-2.1.1:$PATH

# Run bowtie2 with mm10, using sample ID passed from command line i.e. sbatch Run_bowtie.sbatch <sample_ID>
# Pass stdout from bowtie (SAM format) into samtools and convert to BAM

bowtie2 -k 1 -p 3 -x /dscrhome/mc394/indexes/Mus_musculus/UCSC/mm10/Sequence/Bowtie2Index/genome \
	-U /dscrhome/mc394/NGS_Data/FASTQ/${1}/${1}.fastq | samtools view -bS -o /work/mc394/NGS_Data/Bowtie/${1}/${1}.bam -
