#!/bin/sh

# failure
../examples/test3  --stringTest=one homer -B 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test17.out; then
	exit 0
else
	exit 1
fi

