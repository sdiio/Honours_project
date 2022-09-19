#!/bin/bash
#PBS -l ncpus=96
#PBS -l mem=190GB
#PBS -l jobfs=400GB
#PBS -q normal
#PBS -P ht96
#PBS -l walltime=48:00:00
#PBS -N faultyindivididuals
#PBS -l storage=scratch/ht96+gdata/ht96

module load nci-parallel/1.0.0a

export ncores_per_task=12
export ncores_per_numanode=12
CMDS_PATH="/g/data/ht96/DiIorio_UQ/command_scripts/2_variant_calling/cmds.txt"

mpirun -np $((PBS_NCPUS/ncores_per_task)) --map-by ppr:$((ncores_per_numanode/ncores_per_task)):NUMA:PE=${ncores_per_task} nci-parallel --input-file $CMDS_PATH  --timeout 172800
