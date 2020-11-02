#!/bin/bash

npm run test -- --o --runInBand > fails.out 2>&1
cat fails.out | grep "FAIL " > fails.csv
rm fails.out
python get_failing_tests.py
