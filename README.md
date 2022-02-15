# Project1
##Requires access to ssh server 10.102.161.8 - use command: ssh -i putty_key your_username@10.102.161.8
##General Info
Short-read scripts (called SR_SX_script) assemble Illumina data into complete assemblies.
Completed short-read assemblies for our five samples can be found using the notation assembly_SR_SX.fasta (X= sample identity)
Pilon Polished assemblies can also be found in the repository under notation polished_assembly_SR_SX.fasta
Long-read scripts (beginning) assemble Nanopore data into complete assemblies.
Completed long-read assemblies of passed reads for our five samples can be found using the notation assembly_LR_SX.fasta
Medaka Polished assemblies can also be found within the repository under notation medaka_assembly_LR.SX.fasta
Hybrid scripts assemble both short and long-read data into complete assemblies.
Our one example hybrid assembly for sample five is entitled XXXX.
Prokka Genome annotations can also be found within this repository from each of our assemblies.


##Prerequisites
You have installed the correct versions of Unicycler (our short-read and hybrid assembler), FLYE (our long-read assembler), Medaka (our long-read polisher), QUAST (our short-read QC tool) and PROKKA (our genome annotator).
You have two folders, one containing short-read Illumina data and the other containing long-read Nanopore data.
Ensure the working directory within the server is shared/
##Setup
Run the following command in Git Bash: sbatch [the name of script you wish to run - for short reads, this is SR_SX_script. For long reads, this is XXX. For hybrid scripts this is]
##Technologies
Unicycler Version: v0.4.8
FLYE version
Medaka version
Prokka Version
##ChangeLog
...
##Contributors
Matthew Gaskins
Lewis Wood
Saroj Sharma
##Contact
stymwg@nottingham.ac.uk
