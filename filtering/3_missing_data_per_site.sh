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

#removing missing data per site, in this instance at a level of 0.5
/home/564/si7912/vcftools --gzvcf ${IN}/finalpopMQMD.recode.vcf --max-missing 0.5 --recode --recode-INFO-all --out ${OUT}/finalpopMQMDMiss
