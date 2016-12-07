#!/bin/sh

# success
../examples/test4 -BA --Bs asdf 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test19.out; then
	exit 0
else
	exit 1
fi

