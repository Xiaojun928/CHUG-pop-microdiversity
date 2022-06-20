#!/bin/bash
#SBATCH -n 2
/home-user/software/iqtree/iqtree -s acc_content.fasta -st MORPH -B 1000 -redo
