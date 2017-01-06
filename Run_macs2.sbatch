#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --get-user-env
#SBATCH --job-name=macs2
#SBATCH --mail-type=END

# This script will run MACS2 based on a table with fields ChIP Sample $2 Input Sample $3

# Add Python 2.7.10 to path
export PATH=/opt/apps/Python-2.7.10/bin:$PATH

DIR="/work/mc394/NGS_Data/Bowtie"

macs2 callpeak -t ${DIR}/${1}/${1}.bam -c ${DIR}/${2}/${2}.bam -f BAM -g mm -n ${4}_${3} \
-q 0.0005 -m 15 50 --bw=200 --outdir=/work/mc394/NGS_Data/MACS/${4}_${3}/
