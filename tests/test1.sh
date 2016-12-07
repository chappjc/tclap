#!/bin/sh

# success
../examples/test1 -r -n mike 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test1.out; then
	exit 0
else
	exit 1
fi

