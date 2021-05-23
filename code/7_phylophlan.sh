#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 12:00:00
#SBATCH -J phylophlan
#SBATCH --mail-type=ALL
#SBATCH --mail-user ines.borges.5840@student.uu.se

# Load modules
module load bioinfo-tools
module load phylophlan/0.99
module load python/2.7.15
module load FastTree/2.1.10
module load usearch/5.2.32
module load muscle/3.8.1551

# My commands

ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/phylophlan.py /proj/g2021012/nobackup/work/ins/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/*.bz2 /proj/g2021012/nobackup/work/ins/data/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/ppaalns/ppa.aln.tar.bz2 /proj/g2021012/nobackup/work/ins/data/ppaalns/
ln -sf /sw/apps/bioinfo/phylophlan/0.99/rackham/bin/data/ppafull.tax.txt /proj/g2021012/nobackup/work/ins/data/


for n in 1 2 3 5 6 7 8 9 11 16 18 19 20 22 23 24;
do
    ln -sf /home/ins/GenomeAnalysis/output/4_prokka/combined/${n}/combined_binning.${n}.faa /proj/g2021012/nobackup/work/ins/input/bins
done

cd /proj/g2021012/nobackup/work/ins
phylophlan.py -i bins -t --nproc 2
