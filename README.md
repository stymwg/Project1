# Project1
##Requires access to ssh server 10.102.161.8 - use command: ssh -i putty_key your_username@10.102.161.8
##General Info
LR scripts assembles XXXX
This script converts VCF files from a folder into a csv, which will be read into R to produce an allele frequency difference plot
between diploid and tetraploid populations
##Prerequisites
You have installed the correct versions of Unicycler (our short-read and hybrid assembler), FLYE (our long-read assembler), Medaka (our long-read polisher), QUAST (our short-read QC tool) and PROKKA (our genome annotator).
You have a Windows machine.
You have two folders, one containing short-read Illumina data and the other containing long-read Flye data.
Ensure the working directory within the server is shared/
##Setup
Run the following command in Unix: sbatch [the name of script you wish to run]
##Technologies
Unix Version
Unicycler Version
FLYE version
Medaka version
Prokka Version
Flye Version
##ChangeLog
...
##Contributors
Matthew Gaskins
Lewis Wood
Saroj Sharma
##Contact
stymwg@nottingham.ac.uk
