#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --get-user-env
#SBATCH --job-name=cuffmerge
#SBATCH --output=cuffmerge_run1.out
#SBATCH --mail-type=ALL

# Add tophat2, bowtie2, and cufflinks2 to path
export PATH=/opt/apps/slurm/bowtie2-2.2.5:/opt/apps/slurm/tophat-2.0.13/bin:/opt/apps/cufflinks-2.1.1:$PATH

cuffmerge -p 12 -g /dscrhome/jdw54/gencode.vM6.annotation_parsed.gtf \
	-s /dscrhome/jdw54/indexes/Mus_musculus/UCSC/mm10/Sequence/Chromosomes \
	/dscrhome/jdw54/Cufflinks/cuff_list.txt
	
