#!/bin/bash
#simple if condition example

FILENAME=$1

echo "Searching if the file $FILENAME exists"

if [ -f $FILENAME ] && [ -r $FILENAME ] 
   then
	echo "You are lucky, $FILENAME exists."
fi
