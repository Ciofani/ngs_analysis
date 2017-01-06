#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --get-user-env
#SBATCH --job-name=htseq_count
#SBATCH --mail-type=END


# Add Python 2.7.10 to path
export PATH=/opt/apps/Python-2.7.10/bin:$PATH

FILENAME=$2

ANNOTATION=/dscrhome/mc394/indexes/Mus_musculus/UCSC/mm10/Annotation/Genes/genes.gtf

python -m HTSeq.scripts.count -f bam -r pos -s no -m union -q $1 $ANNOTATION > /work/mc394/NGS_Data/HTS-COUNT/${FILENAME}.counts
