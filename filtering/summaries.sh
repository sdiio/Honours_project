#!/bin/bash
#PBS -l ncpus=96
#PBS -l mem=100gb
#PBS -l jobfs=100gb
#PBS -q normal
#PBS -P ht96
#PBS -l walltime=24:00:00
#PBS -N summarydepthforthesisv1
#PBS -l storage=scratch/ht96+gdata/ht96

#input and output directory shortcut creation
SUBSET_VCF="/g/data/ht96/DiIorio_UQ/scratch/4_local_PCA/FINALpops.recode.vcf"
OUT="/g/data/ht96/DiIorio_UQ/scratch/4_local_PCA"

#calculate allele frequency
#/home/564/si7912/vcftools --gzvcf $SUBSET_VCF --freq2 --out $OUT --max-alleles 2

#calculate mean depth per individual - working
/home/564/si7912/vcftools --gzvcf $SUBSET_VCF --depth --out $OUT/individuallist

#calculate mean depth per site - working
#/home/564/si7912/vcftools --gzvcf $SUBSET_VCF --site-mean-depth --out $OUT/meandepthsite

#calculate site quality - working
#/home/564/si7912/vcftools --gzvcf $SUBSET_VCF --site-quality --out $OUT/sitequality

#calculate proportion of missing data per site
#/home/564/si7912/vcftools --gzvcf $SUBSET_VCF --missing-site --out $OUT/missingdatepersite
