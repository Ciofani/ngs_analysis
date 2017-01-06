#!/bin/bash

# This script helps prevent downloading the same SRA dataset multiple times!
# FIRST, run (find . -type d -name SRR* -printf '%f\n' > current_SRR.txt)
# within the /work/mc394/NGS_Data directory. This will provide a list of all
# SRR files currently on disk.
# NEXT, create a list (one per line) of SRR files you are thinking about
# downloading.
#
# TO RUN: at command line, type 
# (./list_rev_intersect.sh <list_to_test> <list_current_files> | 
# sort | uniq > outfile.txt). The pipe method will eliminate duplicates.

while read FILENAME; do
if grep -Fxq "$FILENAME" $2
then
continue
else
echo $FILENAME
fi
done<$1
