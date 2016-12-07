#!/bin/sh

# failure
../examples/test1 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test4.out; then
	exit 0
else
	exit 1
fi

