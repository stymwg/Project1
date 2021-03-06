#!/bin/bash
#SBATCH --job-name=PassQC
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=4g
#SBATCH --time=06:00:00
#SBATCH --output=/shared/Project1_Resources/GROUP2_Workspace/SarojQCResults/OandE/OandE%x.out
#SBATCH --error=/shared/Project1_Resources/GROUP2_Workspace/SarojQCResults/OandE/OandE%x.err

source $HOME/.bash_profile

conda activate /shared/home/mbxss20/miniconda3/envs/Quastenv

quast -r /shared/Project1_Resources/GROUP2_Workspace/SarojQCResults/Haloferax_volcanii_DS2_Ref/ncbi-genomes-2022-02-10/GCF_000025685.1_ASM2568v1_genomic.fna.gz --labels S1_QC,S5_QC,S6_QC,S7_QC,S8_QC --glimmer /shared/Project1_Resources/GROUP2_Workspace/lewis_unicycle_shortreads/H*/pilon_polish/0_insert_size_check.fasta.fasta -o QCResults/ShortReadQC
