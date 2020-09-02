# run featureCounts on ALL
featureCounts \
-p -t exon \
-a /home/ap14958/GTF/Triticum_aestivum/Triticum_aestivum.IWGSC.45.gtf \
-o Counts_reverse_stranded.gene -F GTF -T 64 \
-s 2 \
STAR_New/*.bam
