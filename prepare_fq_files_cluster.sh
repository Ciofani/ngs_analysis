#!/bin/bash
# Modified from Aviv Madar's original script by Josh Wheaton on May 21 2015
# All PATH variables are relative to working directory
META_FILE="/home/ciofanilab/jdw54/RNAseq_ident_list2.txt" # specifies which SL#'s to download
ZIP_PATH="/home/ciofanilab/jdw54/"
mkdir ${ZIP_PATH}split_files
SCRATCH_PATH="/home/ciofanilab/jdw54/SL3365/split_files/"
while read i; do
        sl_num=$i
	fl_zip=${ZIP_PATH}${i}.fastq.gz
	fl_fastq=${SCRATCH_PATH}${i}.fastq
	echo "gunzip -c $fl_zip > $fl_fastq"
	gunzip -c $fl_zip > $fl_fastq
	fl=$fl_fastq
	# get file length
        l=`wc -l $fl | cut -d ' ' -f 1`
	echo "$fl is of length $l"
	# split file down the middlet to a right and left reads file
	fl1=${SCRATCH_PATH}${i}_r1.fastq
	fl2=${SCRATCH_PATH}${i}_r2.fastq
	echo "splitting $fl to $fl1 $fl2"
	l_half=`expr $l / 2`
	head -$l_half $fl > $fl1
	tail -$l_half $fl > $fl2
	rm $fl_fastq
done < $META_FILE
