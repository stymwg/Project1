#!/bin/bash
#SBATCH --job-name=S5_Unicycler 
#SBATCH --partition=hpc 
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=15g
#SBATCH --time=24:00:00
#SBATCH --output=/shared/Project1_Resources/GROUP2_Workspace/%x.out
#SBATCH --error=/shared/Project1_Resources/GROUP2_Workspace/%x.err


source $HOME/.bash_profile
conda activate /shared/home/mbxlw2/miniconda3/envs/unicyclerENV
 
unicycler -1 /shared/home/mbxlw2/Unicycler/S5/H1804_S5_ALL_R1_001.fastq.gz -2 /shared/home/mbxlw2/Unicycler/S5/H1804_S5_ALL_R2_001.fastq.gz -o /shared/Project1_Resources/GROUP2_Workspace/H1804_S5_ALL_lanes
