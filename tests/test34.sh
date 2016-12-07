#!/bin/sh

# success
../examples/test6 -n homer 2  2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test34.out; then
	exit 0
else
	exit 1
fi

