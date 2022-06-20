Step1: generate core genome alignment 
Scripts: s1.make_mauve_align.sh, s2.get_coreLCB.sh, s3.conct_LCB.pl
Input: genome files of trageted strains (fasta format)
Output: core genome alignment(fasta format)


Step2: mask recombined regions
Scripts: s4.run_gubbins.sh
Input: core genome alignment(fasta format)
Output: core genome alignment with recombined regions masked (fasta format)

Step3: tree construction
Scripts: s5.iqtree.sh
Input: core genome alignment with recombined regions masked (fasta format)
Output: unrooted tree file (nwk format, *.treefile)

Step4: root the tree with MAD method (only applied to phylogeny based on 33 CHUG members)
`mad -f CHUG_only_masked.treefile`