#!/bin/bash
#SBATCH --nodes 1
#SBATCH --ntasks 1
#SBATCH --partition compute
#SBATCH --time=00:05:00
#SBATCH --account=ttrojan_001
#SBATCH --chdir /home1/${USER}/running-jobs-on-CARC-laguna
module purge
module load usc
module load openjdk
module load fastqc
echo "Example FastQC start"
sleep 20
fastqc -o results/fastqc-rawseq-ordered data/raw-seq-ordered/yeast_1_50K.fastq.gz
fastqc -o results/fastqc-rawseq-ordered data/raw-seq-ordered/yeast_2_50K.fastq.gz
fastqc -o results/fastqc-rawseq-ordered data/raw-seq-ordered/yeast_3_50K.fastq.gz
fastqc -o results/fastqc-rawseq-ordered data/raw-seq-ordered/yeast_4_50K.fastq.gz
fastqc -o results/fastqc-rawseq-ordered data/raw-seq-ordered/yeast_5_50K.fastq.gz
fastqc -o results/fastqc-rawseq-ordered data/raw-seq-ordered/yeast_6_50K.fastq.gz
echo "Example FastQC end"
