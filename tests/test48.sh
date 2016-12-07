#!/bin/sh

# success
../examples/test8  -s=aaa homer marge bart -- one two 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test48.out; then
	exit 0
else
	exit 1
fi

