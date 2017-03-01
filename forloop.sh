#!/bin/bash
#for loop example

echo "Listing all the shell scripts contents of the directory"
echo

SHELLSCRIPT="`ls *.sh`"

for SCRIPT in $SHELLSCRIPT; do
  CONTENT="`cat $SCRIPT`"
  echo "The content of $SCRIPT are"
  echo "============================================"
  echo "$CONTENT"
  echo ""
done
