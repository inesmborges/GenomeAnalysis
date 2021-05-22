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

prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/1 --prefix combined_binning.1 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.1.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/2 --prefix combined_binning.2 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.2.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/3 --prefix combined_binning.3 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.3.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/5 --prefix combined_binning.5 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.5.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/6 --prefix combined_binning.6 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.6.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/7 --prefix combined_binning.7 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.7.fa
prokka --kingdom Archaea --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/8 --prefix combined_binning.8 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.8.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/9 --prefix combined_binning.9 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.9.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/11 --prefix combined_binning.11 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.11.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/16 --prefix combined_binning.16 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.16.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/18 --prefix combined_binning.18 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.18.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/19 --prefix combined_binning.19 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.19.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/20 --prefix combined_binning.20 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.20.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/22 --prefix combined_binning.22 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.22.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/23 --prefix combined_binning.23 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.23.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/combined/24 --prefix combined_binning.24 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.24.fa
