#!/usr/bin/env bash
# without -a, the read from test 5 is not reported at all (stdout is empty)
$FLEXIPLEX -u "??????????" -b "????????" -x GTGGCCGATGTTTCGCATCGGCGTACGACT -k CCCCCCCC -f 4 -e 0 input.fastq
