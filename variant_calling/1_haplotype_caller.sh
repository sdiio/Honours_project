#!/bin/bash

module load gatk

#create variables and directories for everything to go into
OUTPUT_DIRECTORY="/g/data/ht96/DiIorio_UQ/scratch/variant_calling/step_1_results"
BAMFILE="/g/data/ht96/DiIorio_UQ/wgsdata/prepped_data/$1_rln.mdup.cln.bam"
REFERENCE="/scratch/ht96/si7912/SPD_CN1K_CtgRN.fasta"

#changing number in java options will have direct impact on speed of process
gatk --java-options "-Xmx48g" HaplotypeCaller --reference ${REFERENCE} --input ${BAMFILE} --output ${OUTPUT_DIRECTORY}/${1}.g.vcf.gz --create-output-variant-index true --emit-ref-confidence GVCF

