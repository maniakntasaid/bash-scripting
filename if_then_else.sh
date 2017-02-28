#!/bin/bash
#this is an example of if then else

clear

echo "Enter a number between 1 and 3"
read VALUE

if [ "$VALUE" -eq "3" ] 2>/dev/null || [ "$VALUE" -eq "2" ] 2>/dev/null || [ "$VALUE" -eq "1"  ] 2>/dev/null; then
  echo "You entered the number $VALUE"
elif [ "$VALUE" -eq "4" ] 2>/dev/null; then
   echo "You entered the value 4"
elif [ "$VALUE" -eq "5" ] 2>/dev/null; then
   echo "You entered a value 5"
elif [ "$VALUE" -gt "5" ] && [ "$VALUE" -lt "100"  ]; then
   echo "You entered a value between 5 and 100"
else
  echo "You did not enter a number between 1 and 100"
fi
