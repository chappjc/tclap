#!/bin/sh

# failure
../examples/test4 -Bs --Bs asdf 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test18.out; then
	exit 0
else
	exit 1
fi

