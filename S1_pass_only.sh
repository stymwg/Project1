#!/bin/bash
#SBATCH --job-name=S1_pass_only_flye
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=3g
#SBATCH --time=05:00:00
#SBATCH --output=/shared/Project1_Resources/GROUP2_Workspace/lewis_flye/slurm.out
#SBATCH --error=/shared/Project1_Resources/GROUP2_Workspace/lewis_flye/slurm.err

source $HOME/.bash_profile
conda activate /shared/home/mbxlw2/miniconda3/envs/unicyclerENV/envs/flye

python /shared/home/mbxlw2/Flye/bin/flye --nano-hq /shared/home/mbxlw2/Flye/pass_data/barcode01/* --out-dir /shared/Project1_Resources/GROUP2_Workspace/lewis_flye/test

