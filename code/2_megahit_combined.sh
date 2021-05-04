#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 18:00:00
#SBATCH -J megahit

# Load modules
module load bioinfo-tools
module load megahit

# My commands

mkdir -p /home/ins/GenomeAnalysis/output/2_megahit

megahit --kmin-1pass --k-min 65 --k-max 105 --k-step 10 -1 /home/ins/GenomeAnalysis/raw_data/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz,/home/ins/GenomeAnalysis/raw_data/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz -2 /home/ins/GenomeAnalysis/raw_data/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz,/home/ins/GenomeAnalysis/raw_data/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz -o /home/ins/GenomeAnalysis/output/2_megahit/combined_assembly.contigs
