#!/bin/sh

# failure
../examples/test3 -i=9a -i=1 -s=asdf asdf asdf 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test31.out; then
	exit 0
else
	exit 1
fi

