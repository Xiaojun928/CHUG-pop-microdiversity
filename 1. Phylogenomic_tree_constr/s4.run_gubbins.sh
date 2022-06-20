#!/bin/bash
#SBTACH -n 2

#conda activate gubbins_git 
/home-user/xjwang/software/gubbins/python/gubbins/run_gubbins.py CHUG_concate_coreLCB.fasta
python /home-user/xjwang/software/gubbins/python/scripts/mask_gubbins_aln.py --aln CHUG_concate_coreLCB.fasta --gff CHUG_concate_coreLCB.recombination_predictions.gff --out CHUG.masked.aln

#for 38 genomes (CHUG and sister group)
#/home-user/xjwang/software/gubbins/python/gubbins/run_gubbins.py CHUG_sis_concate_coreLCB.fasta
#python /home-user/xjwang/software/gubbins/python/scripts/mask_gubbins_aln.py --aln CHUG_sis_concate_coreLCB.fasta --gff CHUG_sis_concate_coreLCB.recombination_predictions.gff --out CHUG_sis.masked.aln
