#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 6:00:00
#SBATCH -J htseq
#SBATCH --mail-type=ALL
#SBATCH --mail-user ines.borges.5840@student.uu.se


# Load modules
module load bioinfo-tools
module load htseq

# My commands

mkdir -p /home/ins/GenomeAnalysis/output/6_htseq

# combined
#
for n in 1 2 3 5 6 7 8 9 11 12 16 18 19 20 22 23 24;
do
    sed '/##FASTA/,$d' /home/ins/GenomeAnalysis/output/4_prokka/combined/${n}/combined_binning.${n}.gff > /home/ins/GenomeAnalysis/output/6_htseq/${n}.gff
    htseq-count -f bam -o pos -t CDS -i ID -s no /home/ins/GenomeAnalysis/output/5_bwa/${n}_137.bam /home/ins/GenomeAnalysis/output/6_htseq/${n}.gff > /home/ins/GenomeAnalysis/output/6_htseq/${n}_htseq_137.counts
    htseq-count -f bam -o pos -t CDS -i ID -s no /home/ins/GenomeAnalysis/output/5_bwa/${n}_139.bam /home/ins/GenomeAnalysis/output/6_htseq/${n}.gff > /home/ins/GenomeAnalysis/output/6_htseq/${n}_htseq_139.counts
done