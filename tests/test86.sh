#!/bin/sh

../examples/test14 -v "3.2 -47.11 0" 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test86.out; then
	exit 0
else
	exit 1
fi
