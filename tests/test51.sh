#!/bin/sh

# failure
../examples/test8  -s=one homer -B 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test51.out; then
	exit 0
else
	exit 1
fi

