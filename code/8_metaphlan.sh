#!/bin/bash -l

#SBATCH -A g2021012
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 23:00:00
#SBATCH -J metaphlan
#SBATCH --mail-type=ALL
#SBATCH --mail-user ines.borges.5840@student.uu.se

# Load modules
module load bioinfo-tools
module load MetaPhlAn3

# My commands

metaphlan /home/ins/GenomeAnalysis/raw_data/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz,/home/ins/GenomeAnalysis/raw_data/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz,/home/ins/GenomeAnalysis/raw_data/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz,/home/ins/GenomeAnalysis/raw_data/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz --bowtie2out /proj/g2021012/nobackup/work/ins/metaphlan/bt2out.txt --input_type fastq --nproc 2 -o /proj/g2021012/nobackup/work/ins/metaphlan/metagenome_profile.txt