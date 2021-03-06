##All assemblies and scripts can be located on the Azure Cloud Compute server 10.102.161.8 - use command ssh -i putty_key your_username@10.102.161.8 to access.


##General Info - Master
The master script can be located in the repository as masterscript.sh. More specific instructions can be found in the file masterscript_readme.txt


##General Info - Short Reads

The four lanes of Illumina data can be concatenated using the command cat file1 file2 file3 file4 > new_sequence_file.
The concatenated short-read sequence file path for both the first and second read mates can then be input to our short-read script - example short-read scripts can be found under SR_SX_script notation, where X is the sample number.
Unpolished short read assemblies can be found under assembly_SR_SX.fasta notation. Assemblies polished with Pilon can be found under polished_SR_SX.fasta notation. These polished assemblies are produced running the original short-read assembly script, and can be found in your output assembly directory in a folder titled pilon_polish/0_insert_size_check.fasta 

##General Info - Long Reads

Long-read Nanopore pass data can be input into our long-read scripts (under notation SX_pass_only.sh) to produce unpolished long-read assemblies - examples of which can be found under SX_pass_only.fasta notation. 
Both pass and fail long-read data can also be input together into long-read scripts - an example is located under notation passfail_assembly_LR_S1.bash.
Our assemblies constructed using both pass and fail data can be found under S1_passandfail.fasta notation.
Long-read assemblies can be polished using Medaka - simply input the filepath to your assemblies and Nanopore data to one of our example scripts - pass-only polishing scripts are located under notation medaka_LR_SX.sh.
Our polished assemblies of pass-only Nanopore data are located under medaka_LR_SX.fasta notation.

##General Info - Hybrid

Hybrid scripts assemble both short and pass-only long-read data into complete assemblies. Our hybrid assemblies for samples one and five can be found under notation hybrid_SX.fasta, and the scripts used to produce them under notation hybrid_SX.sh. Hybrid assemblies polished with Pilon can be found under notation polished_hybridSX.fasta. These polished assemblies are produced running the original hybrid assembly script, and are located in a folder titled pilon_polish/0_insert_size_check.fasta 

##General Info - QC

The quality of our genome assemblies can be assessed by QUAST - scripts used to produce quality control outputs for unpolished and polished short-read assemblies can be found under notation QC_SR.sh and polishedQC_SR.sh respectively.
QC reports for our unpolished and polished short-read assemblies can also be located under notation QC_SR.txt and polishedQC_SR.txt respectively.
QC reports for our unpolished and polished pass-only long-read assemblies can be located under notation QC_LR_passonly.txt and polishedQC_LR_passonly.txt respectively.
QC reports for our unpolished pass/fail long-read assemblies can also be located under notation QC_LR_passfail.txt.
A QC report for both our unpolished and polished sample 1 hybrid assembly can be located under notation QChybrid_S1.txt and polishedQChybrid_S1.txt respectively.

##How to use the master script

Choose which method of assembly or quality control you wish to use - there are six potential approaches (and scripts - short-read, long-read pass only, long-read pass/fail, long-read pass only with polishing, hybrid, QC script)
Delete the remaining five scripts to isolate your chosen method.

Run the following command in Git Bash: sbatch [the name of script you wish to run - for example to run the master script, this is master_script.sh.]

##Prerequisites You have installed the correct versions of Unicycler (our short-read and hybrid assembler), FLYE (our long-read assembler), Medaka (our long-read polisher) and QUAST (our QC tool).
You have two folders, one containing short-read Illumina data and the other containing long-read Nanopore data. Ensure the working directory within the server is shared/

##Setup Run the following command in Git Bash: sbatch [the name of script you wish to run - for example to run the master script, this is master_script.sh.]

##Technologies Python version: 3.7.11 Unicycler Version: 0.4.8 FLYE version: 2.9-b1774 Medaka version: 1.5.0 GitBash version: 1.8.3.1 Conda version: 4.11.0 Pilon-Polish: 1.24)

##ChangeLog ...

##Contributors Matthew Gaskins Lewis Wood Saroj Sharma

##Contact stymwg@nottingham.ac.uk
