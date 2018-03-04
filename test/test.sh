#!/bin/sh -ex

# cleans a potentially failed previous test run
[ -d tmp/ ] && rm -rf tmp/

# creates tmp directory
mkdir tmp

# test
../src/prfg test 128 > tmp/test
diff tmp/test results/test

# cleans tmp directory
rm -rf tmp
