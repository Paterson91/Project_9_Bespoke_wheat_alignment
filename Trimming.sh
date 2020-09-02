#!/bin/bash


############################################################################
############################### Trim Script ################################

for i in `ls *_MERGE_R1.fastq.gz | sed 's/_MERGE_R1.fastq.gz//'`
	do
		echo ""
		echo ">>>>>>>>>>>>>>>>>>>> $i Trimming begun <<<<<<<<<<<<<<<<<<<<<<"
		echo ""
		/usr/local/bin/bbmap/bbduk.sh \
		in1=$i\_MERGE_R1.fastq.gz \
		in2=$i\_MERGE_R2.fastq.gz \
		out1=$i\_R1_TRIMMED.fastq.gz \
		out2=$i\_R2_TRIMMED.fastq.gz \
		ref=/usr/local/bin/bbmap/resources/adapters.fa \
		tpe tbo
		echo ">>>>>>>>>>>>>>>>>>> $i Trimming Complete <<<<<<<<<<<<<<<<<<<<"
		echo ""
	done

command; echo "Trimming Complete" | mail -s "Trimming Complete" a.paterson@bristol.ac.uk
