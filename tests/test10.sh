#!/bin/sh

# failure
../examples/test2 -i 10 -s hello 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test10.out; then
	exit 0
else
	exit 1
fi

