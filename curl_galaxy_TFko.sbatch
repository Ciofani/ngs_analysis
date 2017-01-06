#!/bin/bash

#SBATCH --ntasks=1
#SBATCH --get-user-env
#SBATCH --job-name=galaxy_curl
#SBATCH --output=curl_galaxy.out
#SBATCH --mail-type=ALL

curl https://usegalaxy.org/datasets/bbd44e69cb8906b57526eac6d55582e9/display?to_ext=bam > RORg_ko_GFP_KI_Th17_SL1846.bam

curl https://usegalaxy.org/datasets/bbd44e69cb8906b55392c81abf7329cb/display?to_ext=bam > RORg_ko_GFP_KI_Th17_SL2682.bam

curl https://usegalaxy.org/datasets/bbd44e69cb8906b5b588f6e11f6ef885/display?to_ext=bam > RORg_wt_WT_Th17_SL1844.bam

curl https://usegalaxy.org/datasets/bbd44e69cb8906b57a32d70cc3f79471/display?to_ext=bam > RORg_wt_WT_Th17_SL2680.bam

curl https://usegalaxy.org/datasets/bbd44e69cb8906b54574ceeb4acfc352/display?to_ext=bam > B-ATF_wt_WT_Th17_SL4222.bam

curl https://usegalaxy.org/datasets/bbd44e69cb8906b5badca4018d0323d3/display?to_ext=bam > B-ATF_wt_WT_Th17_SL3301.bam

curl https://usegalaxy.org/datasets/bbd44e69cb8906b50fb1767e2965760c/display?to_ext=bam > B-ATF_ko_KO_Th17_SL3303.bam

curl https://usegalaxy.org/datasets/bbd44e69cb8906b54764503e3c2a6f72/display?to_ext=bam > B-ATF_ko_KO_Th17_SL4224.bam

curl https://usegalaxy.org/datasets/bbd44e69cb8906b54bb4c0ebc0357f43/display?to_ext=bam > STAT3_wt_+CD4-Cre_Th17_SL3541.bam

curl https://usegalaxy.org/datasets/bbd44e69cb8906b52f5bec3eda5872cf/display?to_ext=bam > STAT3_wt_+CD4-Cre_Th17_SL1848.bam

curl https://usegalaxy.org/datasets/bbd44e69cb8906b580fc1e13e617a2f6/display?to_ext=bam > STAT3_ko_floxCD4-Cre_Th17_SL2675.bam

curl https://usegalaxy.org/datasets/bbd44e69cb8906b50985da004409d4c9/display?to_ext=bam > STAT3_ko_floxCD4-Cre_Th17_SL1850.bam

curl https://usegalaxy.org/datasets/bbd44e69cb8906b55712f94857c3b640/display?to_ext=bam > IRF4_ko_KO_Th17_SL2777.bam

curl https://usegalaxy.org/datasets/bbd44e69cb8906b5a34223df3f03fb66/display?to_ext=bam > IRF4_ko_KO_Th17_SL3310.bam

curl https://usegalaxy.org/datasets/bbd44e69cb8906b532d8e73dc06c8f82/display?to_ext=bam > IRF4_wt_WT_Th17_SL2775.bam

curl https://usegalaxy.org/datasets/bbd44e69cb8906b5d1276846ea491209/display?to_ext=bam > IRF4_wt_WT_Th17_SL3308.bam

