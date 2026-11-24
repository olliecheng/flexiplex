#!/usr/bin/env bash
# -a: an assigned read is reported exactly as without -a, once the CR/UR
# comment fields are stripped
$FLEXIPLEX -k barcodes.txt -b GGGG -x TTT -a true input.fastq \
  | awk -F"\t" 'BEGIN{OFS="\t"} {out=$1; for(i=2;i<=NF;i++) if ($i !~ /^(CR|UR):Z:/) out=out OFS $i; print out}'
