#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 04:00:00
#SBATCH -J quast

# Load modules
module load bioinfo-tools
module load quast

# My commands

mkdir -p /home/ins/GenomeAnalysis/output/2_quast

quast.py /home/ins/GenomeAnalysis/output/2_megahit/SRR4342129_assembly/final.contigs.fa -o /home/ins/GenomeAnalysis/output/2_quast2/SRR4342129_qc
quast.py /home/ins/GenomeAnalysis/output/2_megahit/SRR4342133_assembly/final.contigs.fa -o /home/ins/GenomeAnalysis/output/2_quast2/SRR4342133_qc
quast.py /home/ins/GenomeAnalysis/output/2_megahit/combined_assembly/final.contigs.fa -o /home/ins/GenomeAnalysis/output/2_quast2/combined_qc
