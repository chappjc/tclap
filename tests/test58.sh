#!/bin/sh

# success
../examples/test9 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test58.out; then
	exit 0
else
	exit 1
fi

