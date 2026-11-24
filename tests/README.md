## Flexiplex test suite

This is Flexiplex's test suite. To run the test suite, run `make test`.

```
$ make test
1_primary_input             PASSED
2_integration_test          PASSED
3_prefixed_umi              PASSED
4_emit_uncorrected_matches  PASSED
5_emit_unassigned           PASSED
6_unassigned_hidden         PASSED
```

The folder follows this structure. To add a new test, create a new folder under `cases/` with the following structure:
```
tests/
├── test_runner.sh               script to run tests
├── shared/                      inputs shared between cases ($SHARED/)
├── cases/
│   └── <test_name>/
│       ├── run_test.sh          runs the test; must exit 0 on success
│       ├── <input files>        any inputs used by this case
│       └── _expected/           (optional)
│           └── <output files>   any outputs to verify against
└── test_runs/                   test run workdir
```