#!/bin/sh

# failure
../examples/test8  -s bbb homer marge bart -- -hv two 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test49.out; then
	exit 0
else
	exit 1
fi

