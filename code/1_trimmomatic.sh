#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J trimmomatic

# Load modules
module load bioinfo-tools
module load trimmomatic

# My commands

mkdir -p /home/ins/GenomeAnalysis/output/1_trimmomatic

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 -trimlog /home/ins/GenomeAnalysis/output/1_trimmomatic/trimlog_SRR4342137.txt /home/ins/GenomeAnalysis/raw_data/RNA_untrimmed/SRR4342137.1.fastq.gz /home/ins/GenomeAnalysis/raw_data/RNA_untrimmed/SRR4342137.2.fastq.gz /home/ins/GenomeAnalysis/output/1_trimmomatic/SRR4342137_1_paired.fastq.gz /home/ins/GenomeAnalysis/output/1_trimmomatic/SRR4342137_1_unpaired.fastq.gz /home/ins/GenomeAnalysis/output/1_trimmomatic/SRR4342137_2_paired.fastq.gz /home/ins/GenomeAnalysis/output/1_trimmomatic/SRR4342137_2_unpaired.fastq.gz ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 -trimlog /home/ins/GenomeAnalysis/output/1_trimmomatic/trimlog_SRR4342139.txt /home/ins/GenomeAnalysis/raw_data/RNA_untrimmed/SRR4342139.1.fastq.gz /home/ins/GenomeAnalysis/raw_data/RNA_untrimmed/SRR4342139.2.fastq.gz /home/ins/GenomeAnalysis/output/1_trimmomatic/SRR4342139_1_paired.fastq.gz /home/ins/GenomeAnalysis/output/1_trimmomatic/SRR4342139_1_unpaired.fastq.gz /home/ins/GenomeAnalysis/output/1_trimmomatic/SRR4342139_2_paired.fastq.gz /home/ins/GenomeAnalysis/output/1_trimmomatic/SRR4342139_2_unpaired.fastq.gz ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
