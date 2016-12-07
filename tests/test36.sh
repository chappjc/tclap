#!/bin/sh

# failure
../examples/test6 -n homer 6  2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test36.out; then
	exit 0
else
	exit 1
fi

