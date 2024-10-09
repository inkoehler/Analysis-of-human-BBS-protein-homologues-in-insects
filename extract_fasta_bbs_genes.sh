#!/bin/bash

# Define the path to your FASTA file
FASTA_FILE="/home/inak/bbs_project/data/fasta/whole_genome/Agambiae.faa"

# Output file where the results will be saved
OUTPUT_FILE="/home/inak/bbs_project/data/fasta/bbs_genes/agambiae_bbs_genes.fasta"

# Check if output file already exists and remove it to start fresh
if [ -f "$OUTPUT_FILE" ]; then
    rm "$OUTPUT_FILE"
fi

# Loop through each line in gene_names.txt
while IFS= read -r gene_name; do
    # Use awk to extract the sequence and append it to the output file
    awk "/$gene_name/{print;flag=1;next}/^>/{flag=0}flag" "$FASTA_FILE" >> "$OUTPUT_FILE"
done < "/home/inak/bbs_project/data/gene_names/agambiae_bbs_genes.txt"

echo "Extraction complete. Check $OUTPUT_FILE for the results."

#####################################################################################

# Define the path to your FASTA file
FASTA_FILE="/home/inak/bbs_project/data/fasta/whole_genome/Amellifera.faa"

# Output file where the results will be saved
OUTPUT_FILE="/home/inak/bbs_project/data/fasta/bbs_genes/amellifera_bbs_genes.fasta"

# Check if output file already exists and remove it to start fresh
if [ -f "$OUTPUT_FILE" ]; then
    rm "$OUTPUT_FILE"
fi

# Loop through each line in gene_names.txt
while IFS= read -r gene_name; do
    # Use awk to extract the sequence and append it to the output file
    awk "/$gene_name/{print;flag=1;next}/^>/{flag=0}flag" "$FASTA_FILE" >> "$OUTPUT_FILE"
done < "/home/inak/bbs_project/data/gene_names/amellifera_bbs_genes.txt"

echo "Extraction complete. Check $OUTPUT_FILE for the results."

#####################################################################################

# Define the path to your FASTA file
FASTA_FILE="/home/inak/bbs_project/data/fasta/whole_genome/Apisum.faa"

# Output file where the results will be saved
OUTPUT_FILE="/home/inak/bbs_project/data/fasta/bbs_genes/apisum_bbs_genes.fasta"

# Check if output file already exists and remove it to start fresh
if [ -f "$OUTPUT_FILE" ]; then
    rm "$OUTPUT_FILE"
fi

# Loop through each line in gene_names.txt
while IFS= read -r gene_name; do
    # Use awk to extract the sequence and append it to the output file
    awk "/$gene_name/{print;flag=1;next}/^>/{flag=0}flag" "$FASTA_FILE" >> "$OUTPUT_FILE"
done < "/home/inak/bbs_project/data/gene_names/apisum_bbs_genes.txt"

echo "Extraction complete. Check $OUTPUT_FILE for the results."

#####################################################################################

# Define the path to your FASTA file
FASTA_FILE="/home/inak/bbs_project/data/fasta/whole_genome/Bterrestris.faa"

# Output file where the results will be saved
OUTPUT_FILE="/home/inak/bbs_project/data/fasta/bbs_genes/bterrestris_bbs_genes.fasta"

# Check if output file already exists and remove it to start fresh
if [ -f "$OUTPUT_FILE" ]; then
    rm "$OUTPUT_FILE"
fi

# Loop through each line in gene_names.txt
while IFS= read -r gene_name; do
    # Use awk to extract the sequence and append it to the output file
    awk "/$gene_name/{print;flag=1;next}/^>/{flag=0}flag" "$FASTA_FILE" >> "$OUTPUT_FILE"
done < "/home/inak/bbs_project/data/gene_names/bterrestris_bbs_genes.txt"

echo "Extraction complete. Check $OUTPUT_FILE for the results."

#####################################################################################

# Define the path to your FASTA file
FASTA_FILE="/home/inak/bbs_project/data/fasta/whole_genome/Dmelanogaster.faa"

# Output file where the results will be saved
OUTPUT_FILE="/home/inak/bbs_project/data/fasta/bbs_genes/dmelanogaster_bbs_genes.fasta"

# Check if output file already exists and remove it to start fresh
if [ -f "$OUTPUT_FILE" ]; then
    rm "$OUTPUT_FILE"
fi

# Loop through each line in gene_names.txt
while IFS= read -r gene_name; do
    # Use awk to extract the sequence and append it to the output file
    awk "/$gene_name/{print;flag=1;next}/^>/{flag=0}flag" "$FASTA_FILE" >> "$OUTPUT_FILE"
done < "/home/inak/bbs_project/data/gene_names/dmelanogaster_bbs_genes.txt"

echo "Extraction complete. Check $OUTPUT_FILE for the results."

#####################################################################################

# Define the path to your FASTA file
FASTA_FILE="/home/inak/bbs_project/data/fasta/whole_genome/Msexta.faa"

# Output file where the results will be saved
OUTPUT_FILE="/home/inak/bbs_project/data/fasta/bbs_genes/msexta_bbs_genes.fasta"

# Check if output file already exists and remove it to start fresh
if [ -f "$OUTPUT_FILE" ]; then
    rm "$OUTPUT_FILE"
fi

# Loop through each line in gene_names.txt
while IFS= read -r gene_name; do
    # Use awk to extract the sequence and append it to the output file
    awk "/$gene_name/{print;flag=1;next}/^>/{flag=0}flag" "$FASTA_FILE" >> "$OUTPUT_FILE"
done < "/home/inak/bbs_project/data/gene_names/msexta_bbs_genes.txt"

echo "Extraction complete. Check $OUTPUT_FILE for the results."

#####################################################################################

# Define the path to your FASTA file
FASTA_FILE="/home/inak/bbs_project/data/fasta/whole_genome/Nvitripennis.faa"

# Output file where the results will be saved
OUTPUT_FILE="/home/inak/bbs_project/data/fasta/bbs_genes/nvitripennis_bbs_genes.fasta"

# Check if output file already exists and remove it to start fresh
if [ -f "$OUTPUT_FILE" ]; then
    rm "$OUTPUT_FILE"
fi

# Loop through each line in gene_names.txt
while IFS= read -r gene_name; do
    # Use awk to extract the sequence and append it to the output file
    awk "/$gene_name/{print;flag=1;next}/^>/{flag=0}flag" "$FASTA_FILE" >> "$OUTPUT_FILE"
done < "/home/inak/bbs_project/data/gene_names/nvitripennis_bbs_genes.txt"

echo "Extraction complete. Check $OUTPUT_FILE for the results."

#####################################################################################

# Define the path to your FASTA file
FASTA_FILE="/home/inak/bbs_project/data/fasta/whole_genome/Obiroi.faa"

# Output file where the results will be saved
OUTPUT_FILE="/home/inak/bbs_project/data/fasta/bbs_genes/obiroi_bbs_genes.fasta"

# Check if output file already exists and remove it to start fresh
if [ -f "$OUTPUT_FILE" ]; then
    rm "$OUTPUT_FILE"
fi

# Loop through each line in gene_names.txt
while IFS= read -r gene_name; do
    # Use awk to extract the sequence and append it to the output file
    awk "/$gene_name/{print;flag=1;next}/^>/{flag=0}flag" "$FASTA_FILE" >> "$OUTPUT_FILE"
done < "/home/inak/bbs_project/data/gene_names/obiroi_bbs_genes.txt"

echo "Extraction complete. Check $OUTPUT_FILE for the results."

#####################################################################################

# Define the path to your FASTA file
FASTA_FILE="/home/inak/bbs_project/data/fasta/whole_genome/Phumanus.faa"

# Output file where the results will be saved
OUTPUT_FILE="/home/inak/bbs_project/data/fasta/bbs_genes/phumanus_bbs_genes.fasta"

# Check if output file already exists and remove it to start fresh
if [ -f "$OUTPUT_FILE" ]; then
    rm "$OUTPUT_FILE"
fi

# Loop through each line in gene_names.txt
while IFS= read -r gene_name; do
    # Use awk to extract the sequence and append it to the output file
    awk "/$gene_name/{print;flag=1;next}/^>/{flag=0}flag" "$FASTA_FILE" >> "$OUTPUT_FILE"
done < "/home/inak/bbs_project/data/gene_names/phumanus_bbs_genes.txt"

echo "Extraction complete. Check $OUTPUT_FILE for the results."

#####################################################################################

# Define the path to your FASTA file
FASTA_FILE="/home/inak/bbs_project/data/fasta/whole_genome/Sinvicta.faa"

# Output file where the results will be saved
OUTPUT_FILE="/home/inak/bbs_project/data/fasta/bbs_genes/sinvicta_bbs_genes.fasta"

# Check if output file already exists and remove it to start fresh
if [ -f "$OUTPUT_FILE" ]; then
    rm "$OUTPUT_FILE"
fi

# Loop through each line in gene_names.txt
while IFS= read -r gene_name; do
    # Use awk to extract the sequence and append it to the output file
    awk "/$gene_name/{print;flag=1;next}/^>/{flag=0}flag" "$FASTA_FILE" >> "$OUTPUT_FILE"
done < "/home/inak/bbs_project/data/gene_names/sinvicta_bbs_genes.txt"

echo "Extraction complete. Check $OUTPUT_FILE for the results."

#####################################################################################

# Define the path to your FASTA file
FASTA_FILE="/home/inak/bbs_project/data/fasta/whole_genome/Tcastaneum.faa"

# Output file where the results will be saved
OUTPUT_FILE="/home/inak/bbs_project/data/fasta/bbs_genes/tcastaneum_bbs_genes.fasta"

# Check if output file already exists and remove it to start fresh
if [ -f "$OUTPUT_FILE" ]; then
    rm "$OUTPUT_FILE"
fi

# Loop through each line in gene_names.txt
while IFS= read -r gene_name; do
    # Use awk to extract the sequence and append it to the output file
    awk "/$gene_name/{print;flag=1;next}/^>/{flag=0}flag" "$FASTA_FILE" >> "$OUTPUT_FILE"
done < "/home/inak/bbs_project/data/gene_names/tcastaneum_bbs_genes.txt"

echo "Extraction complete. Check $OUTPUT_FILE for the results."

