#!/bin/sh

# success
../examples/test5 -a asdf -c fdas --eee blah --ddd -j o --jjj t 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test33.out; then
	exit 0
else
	exit 1
fi

