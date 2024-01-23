#!/bin/bash

# Define the path to your FASTA file
FASTA_FILE="/home/inak/bbs_project/data/fasta/whole_genome/Mmusculus.faa"

# Output file where the results will be saved
OUTPUT_FILE="/home/inak/bbs_project/data/fasta/bbs_genes/mmusculus_bbs_genes.fasta"

# Check if output file already exists and remove it to start fresh
if [ -f "$OUTPUT_FILE" ]; then
    rm "$OUTPUT_FILE"
fi

# Loop through each line in gene_names.txt
while IFS= read -r gene_name; do
    # Use awk to extract the sequence and append it to the output file
    awk "/$gene_name/{print;flag=1;next}/^>/{flag=0}flag" "$FASTA_FILE" >> "$OUTPUT_FILE"
done < "/home/inak/bbs_project/data/gene_names/mmusculus_bbs_genes.txt"

echo "Extraction complete. Check $OUTPUT_FILE for the results."
