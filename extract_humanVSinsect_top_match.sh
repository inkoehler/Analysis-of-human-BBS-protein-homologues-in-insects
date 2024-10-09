#!/bin/bash

# Path to the folder containing blast files
blast_folder="blast/all_transcripts"

# File containing the table with 'NP_' strings
table_file="refseq/bbs_list.txt"

# Folder to save the output files
output_folder="bbs_files/human_vs_insect"


# Extract NP_ strings and loop through them
grep -o 'NP_[^[:space:]]*' "$table_file" | while read -r np_string; do
    # Create an output file for each NP_ string
    output_file="${output_folder}/${np_string}.txt"

    # Search each blast file for the NP_ string
    for blast_file in "$blast_folder"/human_*; do
        # Check if file is a regular file
        if [ -f "$blast_file" ]; then
            # Append row containing NP_ string with highest bitscore (12th column) to its respective file
            grep "$np_string" "$blast_file" | sort -k12,12nr | head -n1 | sed "s/^/${blast_file##*/} /" | tr ' ' '\t' >> "$output_file"
        fi
    done
done
