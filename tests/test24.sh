#!/bin/sh

# failure
../examples/test5 --aaa dilbert -b asdf -c fdas 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test24.out; then
	exit 0
else
	exit 1
fi

