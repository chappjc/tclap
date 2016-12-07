#!/bin/sh

# success
../examples/test3 --stringTest=bill -i=9 -i=8 -B homer marge bart 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test13.out; then
	exit 0
else
	exit 1
fi

