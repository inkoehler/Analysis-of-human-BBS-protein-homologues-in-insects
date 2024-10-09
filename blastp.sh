#!/bin/bash

INSECT=refseq/insects
HUMAN=refseq/mammals/h_sapiens/primary_transcripts
OUT_DIR=blast


blastp -query ${INSECT}/a_mellifera/GCF_003254395.2_Amel_HAv3.1_protein.faa -db ${HUMAN}/GCF_000001405.40_GRCh38.p14_protein.faa -out ${OUT_DIR}/amellifera_human.blast \
-evalue 1e-3 -num_threads 15 -outfmt 6 -num_alignments 5 &

blastp -query ${HUMAN}/GCF_000001405.40_GRCh38.p14_protein.faa -db ${INSECT}/a_mellifera/GCF_003254395.2_Amel_HAv3.1_protein.faa -out ${OUT_DIR}/human_amellifera.blast \
-evalue 1e-3 -num_threads 15 -outfmt 6 -num_alignments 5 &


