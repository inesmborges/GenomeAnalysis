#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:00:00
#SBATCH -J prokka

# Load modules
module load bioinfo-tools
module load prokka

# My commands

mkdir -p /home/ins/GenomeAnalysis/output/4_prokka

prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/1 --prefix SRR4342129_binning.1 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.1.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/3 --prefix SRR4342129_binning.3 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.3.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/4 --prefix SRR4342129_binning.4 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.4.fa
prokka --kingdom Archaea --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/5 --prefix SRR4342129_binning.5 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.5.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/6 --prefix SRR4342129_binning.6 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.6.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/7 --prefix SRR4342129_binning.7 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.7.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/9 --prefix SRR4342129_binning.9 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.9.fa
prokka --kingdom Archaea --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/11 --prefix SRR4342129_binning.11 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.11.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/12 --prefix SRR4342129_binning.12 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.12.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/14 --prefix SRR4342129_binning.14 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.14.fa
prokka --kingdom Archaea --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/15 --prefix SRR4342129_binning.15 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.15.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/16 --prefix SRR4342129_binning.16 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.16.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/17 --prefix SRR4342129_binning.17 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.17.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/19 --prefix SRR4342129_binning.19 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.19.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/20 --prefix SRR4342129_binning.20 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.20.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/21 --prefix SRR4342129_binning.21 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.21.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/22 --prefix SRR4342129_binning.22 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.22.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342129/23 --prefix SRR4342129_binning.23 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning/SRR4342129_binning.23.fa
