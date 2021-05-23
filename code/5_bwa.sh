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
module load bwa
module load samtools

# My commands

mkdir -p /home/ins/GenomeAnalysis/output/5_bwa

for n in 1 2 3 5 6 7 8 9 11 16 18 19 20 22 23 24;
do
    bwa index /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.${n}.fa
    bwa mem -t 2 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.${n}.fa /home/ins/GenomeAnalysis/output/1_trimmomatic/SRR4342137_1_paired.fastq.gz /home/ins/GenomeAnalysis/output/1_trimmomatic/SRR4342137_2_paired.fastq.gz > ${n}_137.sam
    samtools view -S -b ${n}_137.sam > /home/ins/GenomeAnalysis/output/5_bwa/${n}_137.bam
    rm ${n}_137.sam
    bwa mem -t 2 /home/ins/GenomeAnalysis/output/3_metabat/combined_binning/combined_binning.${n}.fa /home/ins/GenomeAnalysis/output/1_trimmomatic/SRR4342139_1_paired.fastq.gz /home/ins/GenomeAnalysis/output/1_trimmomatic/SRR4342139_2_paired.fastq.gz > ${n}_139.sam
    samtools view -S -b ${n}_139.sam > /home/ins/GenomeAnalysis/output/5_bwa/${n}_139.bam
    rm ${n}_139.sam
done