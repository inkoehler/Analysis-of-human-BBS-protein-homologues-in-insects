#!/bin/bash

######################################################################################################

#SBATCH -A m2_jgu-funcpoll
#SBATCH -J obiro

#SBATCH -p parallel
#SBATCH -c 40
#SBATCH -N 1
#SBATCH -t 5:00:00

#SBATCH -o /lustre/project/m2_jgu-funcpoll/2023_bbs_project/log/o_o_biroi_blast_%j.log
#SBATCH -e /lustre/project/m2_jgu-funcpoll/2023_bbs_project/log/e_o_biroi_blast_%j.log

######################################################################################################

module purge
module add bio/BLAST+/2.11.0-gompi-2021a

######################################################################################################

INSECT=/lustre/project/m2_jgu-funcpoll/2023_bbs_project/refseq/insects/o_biroi
HUMAN=/lustre/project/m2_jgu-funcpoll/2023_bbs_project/refseq/mammals/h_sapiens/primary_transcripts
OUT_DIR=/lustre/project/m2_jgu-funcpoll/2023_bbs_project/blast


blastp -query ${INSECT}/GCF_003672135.1_Obir_v5.4_protein.faa -db ${HUMAN}/GCF_000001405.40_GRCh38.p14_protein.faa -out ${OUT_DIR}/o_biroi_human.blast \
-evalue 1e-3 -num_threads 15 -outfmt 6 -num_alignments 5 &

blastp -query ${HUMAN}/GCF_000001405.40_GRCh38.p14_protein.faa -db ${INSECT}/GCF_003672135.1_Obir_v5.4_protein.faa -out ${OUT_DIR}/human_o_biroi.blast \
-evalue 1e-3 -num_threads 15 -outfmt 6 -num_alignments 5 &

wait



