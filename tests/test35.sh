#!/bin/sh

# failure
../examples/test6 -n mike 2  2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test35.out; then
	exit 0
else
	exit 1
fi

