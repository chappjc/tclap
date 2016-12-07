#!/bin/sh

# success
../examples/test7 -n homer 2 -n marge 1 3 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test37.out; then
	exit 0
else
	exit 1
fi

