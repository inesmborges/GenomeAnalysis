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

prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/1 --prefix SRR4342133_binning.1 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.1.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/3 --prefix SRR4342133_binning.3 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.3.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/4 --prefix SRR4342133_binning.4 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.4.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/5 --prefix SRR4342133_binning.5 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.5.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/7 --prefix SRR4342133_binning.7 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.7.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/8 --prefix SRR4342133_binning.8 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.8.fa
prokka --kingdom Archaea --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/9 --prefix SRR4342133_binning.9 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.9.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/10 --prefix SRR4342133_binning.10 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.10.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/16 --prefix SRR4342133_binning.16 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.16.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/17 --prefix SRR4342133_binning.17 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.17.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/18 --prefix SRR4342133_binning.18 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.18.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/19 --prefix SRR4342133_binning.19 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.19.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/20 --prefix SRR4342133_binning.20 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.20.fa
prokka --kingdom Archaea --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/21 --prefix SRR4342133_binning.21 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.21.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/23 --prefix SRR4342133_binning.23 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.23.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/25 --prefix SRR4342133_binning.25 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.25.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/26 --prefix SRR4342133_binning.26 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.26.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/27 --prefix SRR4342133_binning.27 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.27.fa
prokka --outdir /home/ins/GenomeAnalysis/output/4_prokka/SRR4342133/29 --prefix SRR4342133_binning.29 /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning/SRR4342133_binning.29.fa
