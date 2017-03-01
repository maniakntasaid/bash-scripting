#!/bin/bash
#while loop example

COUNTER=1
STTIME="st Time"
NDTIME="nd Time"
RDTIME="rd Time"
THTIME="th Time"

echo "Please Enter the text to print"
read TEXT
echo "How many times do you want to print the text?"
read TIMESTOPRINT


while [ $COUNTER -le $TIMESTOPRINT ]; do

  if [ $COUNTER -eq 1 ]; then
     echo "$TEXT - $COUNTER$STTIME"
     COUNTER="`expr $COUNTER + 1`"

  elif [ $COUNTER -eq 2 ]; then
     echo "$TEXT - $COUNTER$NDTIME"
     COUNTER="`expr $COUNTER + 1`"
  
  elif [ $COUNTER -eq 3 ]; then
     echo "$TEXT - $COUNTER$RDTIME"
     COUNTER="`expr $COUNTER + 1`"

  elif [ $COUNTER -eq 4 ]; then
     echo "$TEXT - $COUNTER$THTIME"
     COUNTER="`expr $COUNTER + 1`"

  else
     echo "$TEXT - $COUNTER$THTIME"
     COUNTER="`expr $COUNTER + 1`"
  fi
done

