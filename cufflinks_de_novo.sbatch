#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --get-user-env
#SBATCH --job-name=run_rnaseq
#SBATCH --output=tophat_run.out
#SBATCH --mail-type=BEGIN

# Add tophat2, bowtie2, and cufflinks2 to path
export PATH=/opt/apps/slurm/bowtie2-2.2.5:/opt/apps/slurm/tophat-2.0.13/bin:/opt/apps/cufflinks-2.1.1:$PATH

cufflinks -o /dscrhome/jdw54/SL3365/SL3365_cufflinks /dscrhome/jdw54/SL3365/SL3365_topout_SE/accepted_hits.bam