#!/bin/bash
#PBS -l ncpus=96
#PBS -l mem=200gb
#PBS -l jobfs=100gb
#PBS -q normal
#PBS -P ht96
#PBS -l walltime=48:00:00
#PBS -N zipindexv3
#PBS -l storage=scratch/ht96+gdata/ht96

module load bcftools

#IN="/g/data/ht96/DiIorio_UQ/scratch/4_local_PCA"
IN="/g/data/ht96/DiIorio_UQ/scratch/variant_calling/step_2_results/finalpop.vcf.gz"

bcftools convert ${IN}/subset_SPDCN1KCT_6.bcf.gz > ${IN}/subset_SPDCN1KCT_6.vcf
bcftools view -I ${IN}/subset_SPDCN1KCT_6.bcf.gz -O z -o ${IN}/Subset_SPDCN1KCT_6.vcf
bcftools index ${IN}
