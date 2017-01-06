#!/bin/bash

#This script takes an input list of SRA sample accessions "SRA_List.txt" (one per line) and downloads
#those files as FASTQ into the /work/mc394/NGS_Data/FASTQ folder

while read SRA
do echo Downloading this \file \as fastq: $SRA
mkdir /work/mc394/NGS_Data/FASTQ/${SRA}
sbatch SRA_download.sbatch ${SRA}
done<SRA_list.txt
