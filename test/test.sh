#!/bin/sh -ex

# creates tmp directory
mkdir tmp

# test
../src/prfg test 128 tmp/test
diff tmp/test results/test

# cleans tmp directory
rm -rf tmp
