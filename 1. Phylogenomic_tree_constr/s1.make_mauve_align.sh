# ================
#  mauve_align.sh
# ================

cat <<EOF > mauve_align.sh
#!/bin/bash
#SBATCH -n 4

/home-user/software/mauve/mauve_snapshot_2015-02-13/linux-x64/progressiveMauve --output=mauve_out_chug.xmfa \\
EOF

find genomic_fasta/*.fasta | sed ':a;N;$!ba;s/\n/ \\\n/g' >> mauve_align.sh

cat <<EOF >> mauve_align.sh

echo '========================================================================================================'
echo '========================================================================================================'

EOF

chmod +x mauve_align.sh
sbatch mauve_align.sh
