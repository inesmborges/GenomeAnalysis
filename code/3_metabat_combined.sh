#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J metabat

# Load modules
module load bioinfo-tools
module load MetaBat

# My commands

mkdir -p /home/ins/GenomeAnalysis/output/3_metabat

metabat -i /home/ins/GenomeAnalysis/output/2_megahit/combined_assembly/final.contigs.fa -o /home/ins/GenomeAnalysis/output/3_metabat/combined_binning