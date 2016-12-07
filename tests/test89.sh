#!/bin/bash

../examples/test28 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test89.out; then
	exit 0
else
	exit 1
fi
