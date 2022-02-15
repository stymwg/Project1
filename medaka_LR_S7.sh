#!/bin/bash
#SBATCH --job-name=polishing
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=15g
#SBATCH --time=24:00:00
#SBATCH --output=/shared/Project1_Resources/GROUP2_Workspace/%x.out
#SBATCH --error=/shared/Project1_Resources/GROUP2_Workspace/%x.err


source $HOME/.bash_profile

conda activate /shared/home/mbxlw2/miniconda3/envs/unicyclerENV/envs/medaka

medaka_consensus -d /shared/Project1_Resources/GROUP2_Workspace/lewis_flye/pass/barcode_7_fastq_pass/assembly.fasta -i /shared/home/mbxlw2/Flye/pass_data/barcode07/* -o /shared/Project1_Resources/GROUP2_Workspace/lewis_long_polishing -t 4 -m r941_min_fast_g303
