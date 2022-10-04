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

#creates the file in which there are missing individuals 
/home/564/si7912/vcftools --vcf ${IN}/finalpopMQMDMiss.recode.vcf --missing-indv --out ${OUT}/out.imiss
#nominates the threshold for the missing data allowed
mawk '$5 > 0.4' /g/data/ht96/DiIorio_UQ/scratch/3_SNP_filtering/out.imiss.imiss | cut -f1 > ${OUT}/lowDP.indv
#uses the file list created above to remove individuals of low quality
/home/564/si7912/vcftools --vcf ${IN}/finalpopMQMDMiss.recode.vcf --remove lowDP.indv --recode --recode-INFO-all --out ${OUT}/finalpopMQMDMissLQ
