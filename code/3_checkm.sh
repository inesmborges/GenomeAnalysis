#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J checkm

# Load modules
module load bioinfo-tools
module load CheckM

# My commands

mkdir -p /home/ins/GenomeAnalysis/output/3_checkm

checkm lineage_wf /home/ins/GenomeAnalysis/output/3_metabat/SRR4342129_binning /home/ins/GenomeAnalysis/output/3_checkm/SRR4342129_qc -x fa
checkm lineage_wf /home/ins/GenomeAnalysis/output/3_metabat/SRR4342133_binning /home/ins/GenomeAnalysis/output/3_checkm/SRR4342133_qc -x fa
