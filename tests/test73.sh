#!/bin/sh

# success  tests whether * in UnlabeledValueArg passes 
../examples/test2 -i 1 -s asdf fff*fff 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test73.out; then
	exit 0
else
	exit 1
fi

