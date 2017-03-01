#!/bin/bash
#demo of using erro handling wiht exit

echo "Change to a directory and list contents"
read DIRECTORY

cd $DIRECTORY 2>/dev/null

ERROR=$?

if [ "$ERROR" -eq "0" ]; then
  echo "`ls`"
else
  echo "Cannot change directory"
  exit 1
fi 
