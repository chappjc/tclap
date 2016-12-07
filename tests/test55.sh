#!/bin/sh

# success
../examples/test3 --stringTest=asdf - asdf zero one 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test55.out; then
	exit 0
else
	exit 1
fi

