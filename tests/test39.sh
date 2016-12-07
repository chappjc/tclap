#!/bin/sh

# failure
../examples/test7 2 -n homer -n bart 6  2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test39.out; then
	exit 0
else
	exit 1
fi

