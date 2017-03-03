#!/bin/bash
#demo of function within a shell script structure

#global variables
CMDLINE=$1

#function definitions -start

#display message
funcExample () {
  echo "Printing from example function"
}

funcExample2 () {
  echo "Printing from example2 function"
}

echo "This is the start.."

funcExample2
funcExample
funcExample2
