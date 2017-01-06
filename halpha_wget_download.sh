#!/usr/bin bash
wget -r -H -nc -np -nH --cut-dirs=1 -A .fastq.gz -e robots=off -l1 -i ./RNAseq_ident_list2.txt -B 'http://mendel.hudsonalpha.org/qnU5XmtUBMtS/'
