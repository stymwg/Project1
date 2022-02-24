##All assemblies and scripts can also be located on the Azure Cloud Compute server 10.102.161.8 - use command: ssh -i putty_key your_username@10.102.161.8 to access.

##General Info - Short Reads

The four lanes of Illumina data can be concatenated using the command cat file1 file2 file3 file4 > new_sequence_file.
The concatenated short-read sequence file path for both the first and second read mates can then be input into our short-read script - example short-read scripts can be found under SR_SX_script notation, where X is the sample number. Unpolished short read assemblies can be found under assembly_SR_SX.fasta notation.

##General Info - QC
The QC for each short-read assembly can be found under notation QC_SX_SR.txt. The scripts used to produce these QC outputs can be found under notation XXXX.
Pilon Polished assemblies can also be found in the repository under notation polished_assembly_SR_SX.fasta. The QC for each polished assembly can be found under notation QC_polishedSX_SR.txt. The scripts used to produce these QC outputs can be found under notation

##General Info - Long Reads

Long-read scripts (called SX_pass_only.sh) assemble Nanopore data into complete assemblies. Completed long-read assemblies of passed reads for our five samples can be found in the Long-Reads branch under notation assembly_LR_SX.fasta. The QC for each assembly can be found under notation QC_SX_LR.txt. The scripts used to produce these QC outputs can be found under notation Medaka Polished assemblies can also be found within the repository under notation medaka_LR_SX.fasta. The scripts used to produce these polished assemblies can be found under notation medaka_LR_SX.sh The QC for each polished assembly can be found under notation QC_medakaSX_LR.txt. The scripts used to produce these QC outputs can be found under notation

##General Info - Hybrid

Hybrid scripts assemble both short and long-read data into complete assemblies. Our hybrid assemblies for samples one and five can be found in the Hybrid branch. The scripts used to produce these hybrid assemblies are called hybrid_SX.sh. QC FOR HYBRIDs enter text here

##General Info - Master

##Prerequisites You have installed the correct versions of Unicycler (our short-read and hybrid assembler), FLYE (our long-read assembler), Medaka (our long-read polisher) and QUAST (our QC tool). You have two folders, one containing short-read Illumina data and the other containing long-read Nanopore data. Ensure the working directory within the server is shared/

##Setup Run the following command in Git Bash: sbatch [the name of script you wish to run - for unpolished and polished short reads, this is SR_SX_script.sh. For unpolished long reads, this is SX_pass_only.sh. For polished long reads, this is medaka_LR_SX.sh. For hybrid scripts this is hybrid_S5. For master script, this is XXXXX.] ##Technologies Python version: 3.7.11 Unicycler Version: 0.4.8 FLYE version: 2.9-b1774 Medaka version: 1.5.0 GitBash version: 1.8.3.1 Conda version: 4.11.0 Pilon-Polish: 1.24) ##ChangeLog ... ##Contributors Matthew Gaskins Lewis Wood Saroj Sharma

##Contact stymwg@nottingham.ac.uk
