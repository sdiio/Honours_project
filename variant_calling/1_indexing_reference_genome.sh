#!/bin/bash
#PBS -l ncpus=96
#PBS -l mem=100GB
#PBS -l jobfs=400GB
#PBS -q normal
#PBS -P ht96
#PBS -l walltime=6:00:00
#PBS -N indexv1
#PBS -l storage=scratch/ht96+gdata/ht96


module load samtools/1.12

#indexing the reference genome with samtools for use with GATK
samtools faidx /g/data/ht96/DiIorio_UQ/Indexed_Reference_Genome/SPD_CN1K_CtgRN.fasta
