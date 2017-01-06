#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --get-user-env
#SBATCH --job-name=EBI_SRA_DWN
#SBATCH --output=EBI_SRA_wget.out
#SBATCH --mail-type=END

#This script takes an input list of SRA sample accessions "SRA_list.txt" (one per line) and downloads
#those files as FASTQ into the /work/mc394/NGS_Data/FASTQ folder

while read SRR
do echo Downloading this \file \as fastq: $SRR
PREFIX="$(echo "${SRR}" | cut -c 1-6)"
mkdir /work/mc394/NGS_Data/FASTQ/${SRR}
wget -nv --directory-prefix=/work/mc394/NGS_Data/FASTQ/${SRR}/ ftp://ftp.sra.ebi.ac.uk/vol1/fastq/${PREFIX}/${SRR}/${SRR}.fastq.gz
done<SRR_list.txt
