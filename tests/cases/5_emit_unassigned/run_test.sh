#!/usr/bin/env bash
# -a: a read whose barcode is not in the known list is still reported, once, with
# "-" for the barcode and the observed barcode in CR
$FLEXIPLEX -u "??????????" -b "????????" -x GTGGCCGATGTTTCGCATCGGCGTACGACT -k CCCCCCCC -f 4 -e 0 -a true input.fastq \
  | awk 'NR%4==1'
