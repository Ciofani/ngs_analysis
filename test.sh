#!/bin/bash

for i in $(ls *.bam)
do echo $i
filename="${i%.*}"
echo $filename
done
