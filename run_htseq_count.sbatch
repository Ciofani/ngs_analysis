#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --get-user-env
#SBATCH --job-name=htseq_count
#SBATCH --mail-type=END


# Add Python 2.7.10 to path
export PATH=/opt/apps/Python-2.7.10/bin:$PATH

NOMBRE=${1%.sorted.bam}

python -m HTSeq.scripts.count -f bam -r pos -s no -q $1 /netscratch/jdw54/sorted/merged.gtf > ${NOMBRE}.counts



#/dscrhome/jdw54/Cufflinks/merged_asm/merged.gtf
