#!/usr/bin/env bash
# segfaulted when no UMI was provided; only needs to exit successfully
$FLEXIPLEX -x ATCGGCGTACGACT -b \"????????\" -x ATCCACGTGCTTGAGACTGTGG -k barcodes.txt -f 2 -e 1 input.fastq > output.fastq
