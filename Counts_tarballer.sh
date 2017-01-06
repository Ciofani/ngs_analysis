#!/bin/bash

# This script will take HTSEQ count files according to identifiers in 
# tarball_list.txt and create a new tar archive called countfiles.tar.gz

while read IDENT; do echo "${IDENT}.counts" ;\
done<tarball_list.txt | tar -cvzf countfiles.tar.gz -C /work/mc394/NGS_Data/HTS-COUNT \
-T -
