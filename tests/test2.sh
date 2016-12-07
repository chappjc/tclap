#!/bin/sh

# success
../examples/test1 -n mike 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test2.out; then
	exit 0
else
	exit 1
fi

