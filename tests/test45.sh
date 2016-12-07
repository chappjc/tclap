#!/bin/sh

# success
../examples/test6 --help  2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test45.out; then
	exit 0
else
	exit 1
fi

