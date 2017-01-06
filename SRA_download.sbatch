#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --get-user-env
#SBATCH --job-name=SRA_download
#SBATCH --output=${1}tophat.out
#SBATCH --mail-type=END

while read SRA
do echo Downloading this \file \as fastq: $SRA
mkdir /work/mc394/NGS_Data/FASTQ/${SRA}
/dscrhome/jdw54/installed_apps/usr/local/opt/sratoolkit.2.6.3-ubuntu64/bin/fastq-dump \
--outdir /work/mc394/NGS_Data/FASTQ/${SRA}/ ${SRA}
done<SRA_list.txt
