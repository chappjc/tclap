#!/bin/sh

# success  test octal
../examples/test19 -i 012 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test72.out; then
	exit 0
else
	exit 1
fi

