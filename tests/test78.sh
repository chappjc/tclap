#!/bin/sh

# success
../examples/test21 ~~reverse /n mike 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test78.out; then
	exit 0
else
	exit 1
fi

