# Additional information BLASTp search
## Goal
reciprocal blastp searches of the BBS genes present in humans against insects

## Data
11 different genome assemblies used from refseq

- A. gambiae (mosquito)
- A. mellifera (honey bee)
- A. pisum (pea aphid)
- B. terrestris (bumble bee)
- D. melanogaster (fruit fly)
- M. sexta (moth)
- N. vitripennis (parasitic wasp)
- O. biroi (ant)
- P. humanus (body louse)
- S. invicta (red fire ant)
- T. castaneum (red flour beetle)


human genome used: GRCh38.p14

### Blast
- create db with module BLAST+ 2.11 `makeblastdb -in am.faa -dbtype prot -parse_seqids``
- parameters: `-evalue 1e-3 -outfmt 6 -num_alignments 5`
- reciprocal search:
    - target: human + query: insect
    - target: insect + query: human

### Data preparation
- run scripts `extract_humanVSinsect_top_match.sh`, `extract_insectVShuman_top_match.sh` to extract two files per bbs gene transcript
    - The first file contains the best match for the corresponding bbs transcript when blasting human against insects. Best match is based on highest bitscore. Each file contains one blast hit per insect
    - The second file contains the best match for the corresponding bbs transcript when blasting insects against human. Best match is based on highest bitscore. Each file contains one blast hit per insect
    - File needed to run the scripts: `bbs_list.txt`
        - contains a list of the (ensembl) gene names and their (refseq) transcripts names. Tabdelimited format, first entry of row is gene name followed by transcript names
- run script `plot_bbs_prot.Rmd` for plotting results
    - required input files:
        - output files from `extract_humanVSinsect_top_match.sh` and `extract_insectVShuman_unranked.sh`
        - `bbs_list2.txt` tab-delimited text file. First column contains gene name of bbs genes, second column contains bbs name (like bbs1, bbs2, etc), all the following columns contain transcript name (used in blast file). X represents an empty entry (=NA).
        - `species_names.txt` holds species names in third column. the first two columns contain the information name added by the extraction scripts. Needed to add species names to plots.
    - generates three output files:
        - sequence similarity of each species per bbs gene and boxplot
        - sequence similarity of each bbs gene per species
        - data table created from the script that is used to create the plots


