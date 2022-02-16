# Project1
##Requires access to ssh server 10.102.161.8 - use command: ssh -i putty_key your_username@10.102.161.8
##General Info - Short Reads
Short-read scripts (called SR_SX_script) assemble Illumina data into complete assemblies.
Completed short-read assemblies for our five samples can be found in the Short-Reads branch under notation assembly_SX_SR.fasta (X=sample identity)
The QC for each assembly can be found under notation QC_SX_SR.txt. The scripts used to produce these QC outputs can be found under notation 
Pilon Polished assemblies can also be found in the repository under notation polished_assembly_SR_SX.fasta.
The QC for each polished assembly can be found under notation QC_polishedSX_SR.txt. The scripts used to produce these QC outputs can be found under notation

##General Info - Long Reads
Long-read scripts (called SX_pass_only.sh) assemble Nanopore data into complete assemblies.
Completed long-read assemblies of passed reads for our five samples can be found in the Long-Reads branch under notation assembly_LR_SX.fasta.
The QC for each assembly can be found under notation QC_SX_LR.txt. The scripts used to produce these QC outputs can be found under notation 
Medaka Polished assemblies can also be found within the repository under notation medaka_LR_SX.fasta. The scripts used to produce these polished assemblies can be found under notation medaka_LR_SX.sh
The QC for each polished assembly can be found under notation QC_medakaSX_LR.txt. The scripts used to produce these QC outputs can be found under notation

##General Info - Hybrid
Hybrid scripts assemble both short and long-read data into complete assemblies.
Our one example hybrid assembly for sample five is entitled hybrid_S5.fasta, and can be found in the Hybrid branch.
The script used to produce this hybrid assembly is called hybrid_S5.sh.

##General Info - Prokka
Prokka Genome annotations can also be found within the Prokka branch of this repository, for all of our assemblies.

##Prerequisites
You have installed the correct versions of Unicycler (our short-read and hybrid assembler), FLYE (our long-read assembler), Medaka (our long-read polisher), QUAST (our short-read QC tool) and PROKKA (our genome annotator).
You have two folders, one containing short-read Illumina data and the other containing long-read Nanopore data.
Ensure the working directory within the server is shared/
##Setup
Run the following command in Git Bash: sbatch [the name of script you wish to run - for unpolished and polished short reads, this is SR_SX_script.sh. For unpolished long reads, this is SX_pass_only.sh. For polished long reads, this is medaka_LR_SX.sh. For hybrid scripts this is hybrid_S5]
##Technologies
Python version: 3.7.11
Unicycler Version: v0.4.8
FLYE version: 2.9-b1774
Medaka version: 1.5.0
Prokka Version:
##ChangeLog
...
##Contributors
Matthew Gaskins
Lewis Wood
Saroj Sharma
##Contact
stymwg@nottingham.ac.uk
