#!/bin/bash

mkdir -p STAR_Optimise

for i in $(seq 0.1 0.1 1.0)
  do
    STAR --genomeDir /home/ap14958/STAR_Indexes/Triticum_aestivum_45_new \
    --runMode alignReads \
    --readFilesIn 1A-WT-plus-SDW_MERGE_R1.fastq.gz 1A-WT-plus-SDW_MERGE_R2.fastq.gz \
    --readFilesCommand zcat \
    --outFileNamePrefix STAR_Optimise/$i\_1A-WT-plus-SDW \
    --outFilterScoreMinOverLread $i --outFilterMatchNminOverLread $i --outFilterMatchNmin 0 \
    --outSAMtype BAM SortedByCoordinate --runThreadN 100 
  done
