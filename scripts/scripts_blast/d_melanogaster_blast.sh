#!/bin/bash

######################################################################################################

#SBATCH -A m2_jgu-funcpoll
#SBATCH -J dmel

#SBATCH -p parallel
#SBATCH -c 40
#SBATCH -N 1
#SBATCH -t 5:00:00

#SBATCH -o /lustre/project/m2_jgu-funcpoll/2023_bbs_project/log/o_d_melanogaster_blast_%j.log
#SBATCH -e /lustre/project/m2_jgu-funcpoll/2023_bbs_project/log/e_d_melanogaster_blast_%j.log

######################################################################################################

module purge
module add bio/BLAST+/2.11.0-gompi-2021a

######################################################################################################

INSECT=/lustre/project/m2_jgu-funcpoll/2023_bbs_project/refseq/insects/d_melanogaster
HUMAN=/lustre/project/m2_jgu-funcpoll/2023_bbs_project/refseq/mammals/h_sapiens/primary_transcripts
OUT_DIR=/lustre/project/m2_jgu-funcpoll/2023_bbs_project/blast


blastp -query ${INSECT}/GCF_000001215.4_Release_6_plus_ISO1_MT_protein.faa -db ${HUMAN}/GCF_000001405.40_GRCh38.p14_protein.faa -out ${OUT_DIR}/d_melanogaster_human.blast \
-evalue 1e-3 -num_threads 15 -outfmt 6 -num_alignments 5 &

blastp -query ${HUMAN}/GCF_000001405.40_GRCh38.p14_protein.faa -db ${INSECT}/GCF_000001215.4_Release_6_plus_ISO1_MT_protein.faa -out ${OUT_DIR}/human_d_melanogaster.blast \
-evalue 1e-3 -num_threads 15 -outfmt 6 -num_alignments 5 &

wait



