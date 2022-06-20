#!/bin/bash
#SBATCH -n 32

#time /home-user/software/iqtree/iqtree -nt 32 -m MFP -alrt 1000 -s CHUG.masked.aln -redo  -wbtl -pre CHUG_only_masked
time /home-user/software/iqtree/iqtree -nt 32 -m MFP -alrt 1000 -s CHUG_sis.masked.aln -redo  -wbtl -pre CHUG_sis_masked

