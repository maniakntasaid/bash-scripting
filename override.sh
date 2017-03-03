#!/bin/bash
#example of override/trap system exit and execute a custom function

#global variables
TMPFILE="tmpfile.txt"
TMPFILE2="tmpfile2.txt"

trap 'funcMyExit' EXIT

#function declarations start

#run this exit instead of default exit when called

funcMyExit () {
  echo "Exit Intercepted "
  echo "cleaning up temp files"
  rm -rf tmpfil*.txt
  exit 255
}

echo "write to tmp file" >> $TMPFILE
echo "Write to tmp2file" >> $TMPFILE2

echo "Trying to copy the indicated file before processing"
cp -rf $1 newfile.txt 2>/dev/null

if [ "$?" -eq "0" ]; then
  echo "Everything worked out"
else
  echo "I guess it did not workout ok"
  exit 1
fi


