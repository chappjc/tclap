#!/bin/sh

# zshcompletionoutput. The when this test fails due to e.g. formatting
# changes the results needs to be manually reviewed and the test81.out
# updated
../examples/test25 -h 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test82.out; then
	exit 0
else
	exit 1
fi

