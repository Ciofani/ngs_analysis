#!/bin/bash

# This script will run MACS2 based on a table with fields ChIP Sample $2 Input Sample $3

# Add Python 2.7.10 to path
#export PATH=/opt/apps/Python-2.7.10/bin:$PATH

sed 1d "chipseq_table.txt" | while read LINE; do
TARGET="$(echo $LINE | awk '{ print $1 }')"
CHIP="$(echo $LINE | awk '{ print $2 }')"
INPUT="$(echo $LINE | awk '{ print $3 }')"
NAME="$(echo ${CHIP}_${INPUT})"
echo Submitting: $NAME
sbatch --job-name=${TARGET}_macs2 -o macs2${NAME}.out -e macs2${NAME}.err Run_macs2.sbatch $CHIP $INPUT $NAME $TARGET
done
