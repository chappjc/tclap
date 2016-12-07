#!/bin/sh

# this tests whether we can parse args from
# a vector of strings and that combined switch
# handling doesn't get fooled if the delimiter
# is in the string
# success  
../examples/test13 2>&1 | sed $'s/\r$//' > tmp.out

if cmp -s tmp.out $srcdir/test68.out; then
	exit 0
else
	exit 1
fi

