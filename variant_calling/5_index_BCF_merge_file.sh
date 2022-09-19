#!/bin/bash
#PBS -l ncpus=96
#PBS -l mem=100GB
#PBS -l jobfs=150GB
#PBS -q normal
#PBS -P ht96
#PBS -l walltime=6:00:00
#PBS -N IndexfilepopfilesBCFtoolsv1
#PBS -l storage=scratch/ht96+gdata/ht96

module load bcftools

#create variables as shortcut
IN="/g/data/ht96/DiIorio_UQ/scratch/variant_calling/step_2_results/"

bcftools index ${IN}/secondfinal_pop.vcf.gz
