#!/bin/sh

# failure
../examples/test2 -i 2.1 -f 4.2 -s asdf asdf 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test30.out; then
	exit 0
else
	exit 1
fi

