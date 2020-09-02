#!/bin/bash

for i in `ls *L001_R1_001.fastq.gz | sed 's/_.*fastq.gz//'`
        do
                echo "" 
                echo ">>>>>>>>>>>>>>>>>>>> $i Read 1 Concatenating begun <<<<<<<<<<<<<<<<<<<<" 
                echo ""
                echo "Input files:"
                echo ""
                ls -l $i\_*_R1_001.fastq.gz
                echo ""
                cat $i\_*_R1_001.fastq.gz > $i\_MERGE_R1.fastq.gz
                echo ""
                echo ">>>>>>>>>>>>>>>>>>> $i Read 1 Concatenating Complete <<<<<<<<<<<<<<<<<<<"
                echo ""
                echo "" 
                echo ">>>>>>>>>>>>>>>>>>>> $i Read 2 Concatenating begun <<<<<<<<<<<<<<<<<<<<" 
                echo ""
                echo "Input files:"
                echo ""
                ls -l $i\_*_R2_001.fastq.gz
                echo ""
                cat $i\_*_R2_001.fastq.gz > $i\_MERGE_R2.fastq.gz
                echo ""
                echo ">>>>>>>>>>>>>>>>>>> $i Read1 Concatenating Complete <<<<<<<<<<<<<<<<<<<"
                echo ""
        done
