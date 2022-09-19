#!/bin/bash
#PBS -l ncpus=96
#PBS -l mem=200gb
#PBS -l jobfs=40gb
#PBS -q hugemem
#PBS -P ht96
#PBS -l walltime=24:00:00
#PBS -N localPCAv16
#PBS -l storage=scratch/ht96+gdata/ht96


#activate the miniconda environment with lostruct installed
source ~/miniconda3/etc/profile.d/conda.sh
source activate lostruct

module load bcftools

R CMD BATCH /g/data/ht96/DiIorio_UQ/command_scripts/4_local_PCA/local_PCA/5_localPCA.R
