#!/bin/sh -ex

# cleans a potentially failed previous test run
[ -d tmp/ ] && rm -rf tmp/

# creates tmp directory
mkdir tmp

# test 1
../src/prbg test 128 > tmp/test
diff tmp/test results/test

# test 2
../src/prbg test 128 tmp/test2
diff tmp/test2 results/test

# cleans tmp directory
rm -rf tmp
