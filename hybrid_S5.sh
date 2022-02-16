#!/bin/bash
#SBATCH --job-name=S5_hybrid_pass
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=15g
#SBATCH --time=48:00:00
#SBATCH --output=/shared/Project1_Resources/GROUP2_Workspace/hybrid_test/%x.out
#SBATCH --error=/shared/Project1_Resources/GROUP2_Workspace/hybrid_test/%x.err

source $HOME/.bash_profile
conda activate /shared/home/mbxlw2/miniconda3/envs/unicyclerENV

unicycler -1 /shared/Project1_Resources/GROUP2_Workspace/hybrid_test/H1804_S5_ALL_R1_001.fastq.gz -2 /shared/Project1_Resources/GROUP2_Workspace/hybrid_test/H1804_S5_ALL_R2_001.fastq.gz -l /shared/Project1_Resources/GROUP2_Workspace/hybrid_test/S5_merged_pass_only.fastq.gz -o /shared/Project1_Resources/GROUP2_Workspace/hybrid_test --spades_tmp_dir /shared/Project1_Resources/GROUP2_Workspace/hybrid_test/spades_assembly/read_correction/tmp

