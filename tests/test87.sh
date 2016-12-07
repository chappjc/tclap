#!/bin/sh

# this tests whether all required args are listed as
# missing when no arguments are specified
# failure  
../examples/test26 -v "1 2 3" 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test87.out; then
	exit 0
else
	exit 1
fi
