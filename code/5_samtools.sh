#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 12:00:00
#SBATCH -J bwa
#SBATCH --mail-type=ALL
#SBATCH --mail-user ines.borges.5840@student.uu.se

# Load modules
module load bioinfo-tools
module load samtools

# My commands

mkdir -p /home/ins/GenomeAnalysis/output/5_bwa

# combined
for n in 1 2 3 5 6 7 8 9 11 12 16 18 19 20 22 23 24;
do
    samtools index /home/ins/GenomeAnalysis/output/5_bwa/${n}_137.bam
    samtools index /home/ins/GenomeAnalysis/output/5_bwa/${n}_139.bam
done