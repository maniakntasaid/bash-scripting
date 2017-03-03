#!/bin/bash
#example of input box

#global variables
INPUTBOX=${INPUTBOX=dialog}
TITLE="Default"
MESSAGE="Something to display"
XCOORD=10
YCOORD=20

funcDisplayInputBox () {
  $INPUTBOX --title "$1" --inputbox "$2" "$3" "$4" 2>input.txt
}

funcDisplayInputBox "Display file name" "Which file in the current directory do you want to display" "10" "20"

if [ "`cat  input.txt`" != "" ]; then
  cat "`cat input.txt`"
else
  echo "Nothing to do"
fi 
