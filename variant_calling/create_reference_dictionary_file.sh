#!/bin/bash
#PBS -l ncpus=96
#PBS -l mem=40GB
#PBS -l jobfs=400GB
#PBS -q normal
#PBS -P ht96
#PBS -l walltime=6:00:00
#PBS -N dictionaryfile1.2
#PBS -l storage=scratch/ht96+gdata/ht96

#creating a dictionary file of the reference genome for use with GATK HaplotypeCaller
java -jar /home/564/si7912/picard.jar CreateSequenceDictionary R=/g/data/ht96/DiIorio_UQ/Indexed_Reference_Genome/SPD_CN1K_CtgRN.fasta O=/g/data/ht96/DiIorio_UQ/Indexed_Reference_Genome/SPD_CN1K_CtgRN.dict
