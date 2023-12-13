#!/bin/bash

######################################################################################################

#SBATCH -A m2_jgu-funcpoll
#SBATCH -J amel

#SBATCH -p parallel
#SBATCH -c 40
#SBATCH -N 1
#SBATCH -t 5:00:00

#SBATCH -o /lustre/project/m2_jgu-funcpoll/2023_bbs_project/log/o_amellifera_blast_%j.log
#SBATCH -e /lustre/project/m2_jgu-funcpoll/2023_bbs_project/log/e_amellifera_blast_%j.log

######################################################################################################

module purge
module add bio/BLAST+/2.11.0-gompi-2021a

######################################################################################################

INSECT=/lustre/project/m2_jgu-funcpoll/2023_bbs_project/refseq/insects
HUMAN=/lustre/project/m2_jgu-funcpoll/2023_bbs_project/refseq/mammals/h_sapiens/primary_transcripts
OUT_DIR=/lustre/project/m2_jgu-funcpoll/2023_bbs_project/blast


blastp -query ${INSECT}/a_mellifera/GCF_003254395.2_Amel_HAv3.1_protein.faa -db ${HUMAN}/GCF_000001405.40_GRCh38.p14_protein.faa -out ${OUT_DIR}/amellifera_human.blast \
-evalue 1e-3 -num_threads 15 -outfmt 6 -num_alignments 5 &

blastp -query ${HUMAN}/GCF_000001405.40_GRCh38.p14_protein.faa -db ${INSECT}/a_mellifera/GCF_003254395.2_Amel_HAv3.1_protein.faa -out ${OUT_DIR}/human_amellifera.blast \
-evalue 1e-3 -num_threads 15 -outfmt 6 -num_alignments 5 &

wait



