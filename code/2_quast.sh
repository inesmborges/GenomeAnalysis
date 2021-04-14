#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J quast

# Load modules
module load bioinfo-tools
module load quast

# My commands

mkdir -p /home/ins/GenomeAnalysis/output/2_quast

metaquast.py /home/ins/GenomeAnalysis/output/2_megahit/SRR4342129_assembly/final.contigs.fa -o /home/ins/GenomeAnalysis/output/2_quast/SRR4342129_qc
metaquast.py /home/ins/GenomeAnalysis/output/2_megahit/SRR4342133_assembly/final.contigs.fa -o /home/ins/GenomeAnalysis/output/2_quast/SRR4342133_qc

