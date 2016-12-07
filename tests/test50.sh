#!/bin/sh

# failure
../examples/test8  -s one homer -B -Bh 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test50.out; then
	exit 0
else
	exit 1
fi

