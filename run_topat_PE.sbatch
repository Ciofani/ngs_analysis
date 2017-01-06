#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --get-user-env
#SBATCH --job-name=run_rnaseq
#SBATCH --output=tophat_run.out
#SBATCH --mail-type=BEGIN

# Add tophat2, bowtie2, and cufflinks2 to path
export PATH=/opt/apps/slurm/bowtie2-2.2.5:/opt/apps/slurm/tophat-2.0.13/bin:/opt/apps/cufflinks-2.1.1:$PATH

# Run tophat
tophat -p 12 -a 12 -g 20 -r 88 --solexa1.3-quals --microexon-search -o /dscrhome/jdw54/SL3365/SL3365_topout \
	/dscrhome/jdw54/indexes/Mus_musculus/UCSC/mm10/Sequence/Bowtie2Index/genome \
	/netscratch/jdw54/SL3365_r1.fastq /netscratch/jdw54/SL3365_r2.fastq
	
exit 0;