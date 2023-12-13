#!/bin/bash

# Path to the folder containing blast files
blast_folder="/lustre/project/m2_jgu-funcpoll/2023_bbs_project/blast/all_transcripts"

# Path to folder containing human vs insect top matches
NP_file="/lustre/project/m2_jgu-funcpoll/2023_bbs_project/bbs_files/human_vs_insect"

# Folder to save the output files
output_folder="/lustre/project/m2_jgu-funcpoll/2023_bbs_project/bbs_files/insect_vs_human/unranked"


# Loop through each file in the human_vs_insect folder
for file in "$NP_file"/*; do
    #echo "File is " ${file}
    # Loop through each line in the file
    while IFS= read -r blast; do
        #echo "Blast is " ${blast}
        # extract the first 
        blast_file=$(echo "${blast}" | cut -f1 | sed 's/human_//' | sed 's/.blast//' )_human.blast
        insect_prot=$(echo "${blast}" | cut -f3 )
        human_prot=$(echo "${blast}" | cut -f2 )
        output_file=${output_folder}/${human_prot}_unranked.txt
	#echo "save " | grep ${insect_prot} "${blast_folder}"/"${blast_file}" | grep ${human_prot}
        line=$(grep ${insect_prot} "${blast_folder}"/"${blast_file}" | grep ${human_prot})
	echo -e "${blast_file}\t${line}"  >> "${output_file}"
    done < "${file}"
done
