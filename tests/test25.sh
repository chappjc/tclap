#!/bin/sh

# success
../examples/test5 --aaa asdf -c fdas --fff blah -i one -i two 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test25.out; then
	exit 0
else
	exit 1
fi

