#!/usr/bin/env bash
# Runs every test case in tests/cases/, or only the named ones:
#
#   tests/test_runner.sh [case ...]
#
# A case is a folder with the following structure:
#   run_test.sh
#   *any input files*
#   _expected/
#       *any output files*
#
# run_test.sh can use:
#   $FLEXIPLEX  the flexiplex binary in the repository root
#   $DATA       shared/, for inputs shared between cases
set -uo pipefail
shopt -s nullglob

TESTS=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
export FLEXIPLEX="$TESTS/../flexiplex"
export SHARED="$TESTS/shared"

# terminal colours if supported
if [ -t 2 ]; then GREEN=$'\033[32m' RED=$'\033[31m' RESET=$'\033[0m'
else GREEN='' RED='' RESET=''; fi

# load cases from argv or cases/ directory
if [ $# -gt 0 ]; then cases=("$@"); else
  cases=(); for d in "$TESTS"/cases/*/; do cases+=("$(basename "$d")"); done
fi
if [ ${#cases[@]} -eq 0 ]; then echo "no test cases found" >&2; exit 2; fi

# one line per case: the name padded to a common width so the results line up
width=0
for name in "${cases[@]}"; do [ ${#name} -gt $width ] && width=${#name}; done
report() {
  # usage: report $RED "$name" "error message"
  printf '%s%-*s  %s%s\n' "$1" "$width" "$2" "$3" "$RESET" >&2
}

status=0
for name in "${cases[@]}"; do
  src="$TESTS/cases/$name"
  run="$TESTS/test_runs/$name"

  if [ -z "$name" ] || [ ! -f "$src/run_test.sh" ]; then
    report "$RED" "$name" "ERROR no such test case"
    status=1; continue
  fi

  # delete the previous run
  if [ -e "$run" ]; then
    # this protects against accidental deletion outside the test_runs directory
    (cd "${TESTS:?}/test_runs" && rm -r -- "./${name:?}") ||
      { echo "could not delete old run $run" >&2; exit 2; }
  fi

  mkdir -p "$run"
  # copy over everything except the `_expected` directory
  find "$src" -mindepth 1 -maxdepth 1 ! -name _expected -exec cp -R {} "$run/" \;   

  # the run's outcome is reported as a single line; details go to files in $run
  if ! (cd "$run" && bash -euo pipefail ./run_test.sh > stdout.txt 2> stderr.txt); then
    report "$RED" "$name" "ERROR stderr: test_runs/$name/stderr.txt"
    status=1; continue
  fi

  # compare each expected file; the first mismatch fails the case
  while IFS= read -r f; do
    f=${f#./}
    if [ ! -f "$run/$f" ]; then
      report "$RED" "$name" "FAILED missing: $f"
      status=1; continue 2
    fi
    diff "$src/_expected/$f" "$run/$f" > /dev/null && continue

    diff -u --label "expected/$f" --label "actual/$f" \
      "$src/_expected/$f" "$run/$f" > "$run/diff.txt"
    report "$RED" "$name" "FAILED diff $f: test_runs/$name/diff.txt"
    status=1; continue 2
  done < <(cd "$src/_expected" 2>/dev/null && find . -type f | sort)

  report "$GREEN" "$name" "PASSED"
done

exit $status