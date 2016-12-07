#!/bin/sh

# success test hex
../examples/test19 -i 0xA 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test71.out; then
	exit 0
else
	exit 1
fi

