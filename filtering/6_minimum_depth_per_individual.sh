#!/bin/bash
#PBS -l ncpus=96
#PBS -l mem=100gb
#PBS -l jobfs=70gb
#PBS -q normal
#PBS -P ht96
#PBS -l walltime=24:00:00
#PBS -N name
#PBS -l storage=scratch/ht96+gdata/ht96

IN="/g/data/ht96/DiIorio_UQ/scratch/4_local_PCA/"
OUT="/g/data/ht96/DiIorio_UQ/scratch/4_local_PCA/"

#Minimum mean depth, in this instance set to 2
/home/564/si7912/vcftools --vcf ${IN}/finalpopMQMDMissLQMMD.recode.vcf --min-meanDP 2 --recode --recode-INFO-all --out ${OUT}/finalpopMQMDMissLQMMDMinMD
