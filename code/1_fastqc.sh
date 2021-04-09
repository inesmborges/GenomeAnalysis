#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J fastqc

# Load modules
module load bioinfo-tools
module load FastQC

# My commands

mkdir -p /home/ins/GenomeAnalysis/output/1_fastqc_dna_trimmed
mkdir -p /home/ins/GenomeAnalysis/output/1_fastqc_rna_trimmed
mkdir -p /home/ins/GenomeAnalysis/output/1_fastqc_rna_untrimmed

for filename in /home/ins/GenomeAnalysis/raw_data/DNA_trimmed/*.fastq.gz
    do
        fastqc $filename -o /home/ins/GenomeAnalysis/output/1_fastqc_dna_trimmed/;
    done

for filename in /home/ins/GenomeAnalysis/raw_data/RNA_untrimmed/*.fastq.gz
    do
        fastqc $filename -o /home/ins/GenomeAnalysis/output/1_fastqc_rna_untrimmed/;
    done

for filename in /home/ins/GenomeAnalysis/output/1_trimmomatic/*.fastq.gz
    do
        fastqc $filename -o /home/ins/GenomeAnalysis/output/1_fastqc_rna_trimmed/;
    done



