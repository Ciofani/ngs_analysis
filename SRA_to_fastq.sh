#!/bin/bash

# This helper script takes a list of SRA files and converts them to fastq

while read FILE
do echo Converting this file to fastq: /dscrhome/jdw54/SRA/${FILE}/${FILE}.sra
/dscrhome/jdw54/installed_apps/usr/local/opt/sratoolkit.2.6.3-ubuntu64/bin/fastq-dump \
-I --split-files /dscrhome/jdw54/SRA/${FILE}/${FILE}.sra --outdir \
/work/mc394/SRA/FASTQ/
done<SRA_List.txt
