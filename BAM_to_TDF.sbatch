#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --get-user-env
#SBATCH --job-name=BAM_to_TDF
#SBATCH --mail-type=END

/dscrhome/mc394/IGVTools/igvtools count -z 10 -w 10 -f mean \
/work/mc394/NGS_Data/Bowtie/${1}/${1}.sorted.bam \
/work/mc394/NGS_Data/Bowtie/${1}/${1}.tdf mm10
