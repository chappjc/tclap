#!/bin/sh

# failure
../examples/test8 -f=9 -f=1.0.0 -s=asdf asdf asdf 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test53.out; then
	exit 0
else
	exit 1
fi

