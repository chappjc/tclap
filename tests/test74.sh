#!/bin/sh

# failure  validates that the correct error message
# is displayed for XOR'd args
../examples/test20 -a -b 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test74.out; then
	exit 0
else
	exit 1
fi

