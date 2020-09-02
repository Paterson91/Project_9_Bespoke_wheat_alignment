############################################################################
############################### Alignment ##################################


mkdir STAR_New
for i in `ls *R1.fastq.gz | sed 's/_MERGE_R1.fastq.gz//'`
	do
		echo ""
		echo ">>>>>>>>>>>>>>>>>>>> $i Alignment begun <<<<<<<<<<<<<<<<<<<<"
		echo ""
		STAR --genomeDir /home/ap14958/STAR_Indexes/Triticum_aestivum_45_new --runMode alignReads \
		--readFilesIn $i\_MERGE_R1.fastq.gz $i\_MERGE_R2.fastq.gz \
		--readFilesCommand zcat \
		--outFileNamePrefix STAR_New/$i \
		--outFilterScoreMinOverLread 0.1 --outFilterMatchNminOverLread 0.1 --outFilterMatchNmin 0 \
		--outSAMtype BAM SortedByCoordinate --runThreadN 100 \
		echo ""
		echo ">>>>>>>>>>>>>>>>>> $i Alignment Complete <<<<<<<<<<<<<<<<<<<"
		echo ""
	done

#command; cat STAR_v2/*final* | grep -i unique | mail -s "Alignments Complete" a.paterson@bristol.ac.uk


############################################################################
