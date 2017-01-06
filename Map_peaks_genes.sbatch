#!/bin/bash

# Runs the map chip peaks to genes program.

Rscript ~/scripts/map_ChIP_peaks_to_genes_macs2.R input_file=/work/mc394/NGS_Data/MACS/${4}_${3}/${4}_${3}_peaks.xls \
	refseq_table=./mm10_refseq_genes.xls \
	path_output=/work/mc394/NGS_Data/MACS/mapped/${4}_${3}_ \
	tss.dist=5000 gene.wide.dist=5000 effective.genome.size=1.87e9 macs.skip.lines=26
