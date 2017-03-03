#!/bin/bash
#example for checking the number of args

if [ "$#" != "3" ]; then
  echo "Must pass 3 paramaeters to the script. Try again"
  exit 300
fi

echo "All done"
