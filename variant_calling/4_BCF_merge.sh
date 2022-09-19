#!/bin/bash
#PBS -l ncpus=384
#PBS -l mem=190GB
#PBS -q normal
#PBS -P ht96
#PBS -l walltime=12:00:00
#PBS -N H04
#PBS -l storage=scratch/ht96+gdata/ht96

module load bcftools

#create variable for output directory
OUTPUTDIR="/g/data/ht96/DiIorio_UQ/scratch/variant_calling/step_2_results"

#create variable for input directory
FILE="/g/data/ht96/DiIorio_UQ/command_scripts/2_variant_calling/H04.txt"

#combine individual sample VCF files
bcftools merge --threads 6 --file-list ${FILE} --output ${OUTPUTDIR}/H04_pop.vcf.gz --gvcf /scratch/ht96/si7912/SPD_CN1K_CtgRN.fasta
