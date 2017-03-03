#!/bin/bash
#example of a simple info box with dialog and ncurses

#global variables
INFOBOX=${INFOBOX=dialog}
TITLE="Default"
MESSAGE="Some message"
XCOORD=10
YCOORD=20

#funtion declaration start

#dispaly the infobox and message

funcDisplayInfoBox () {
  $INFOBOX --title "$1" --infobox "$2" "$3" "$4"
  sleep "$5" 
}

#function declarations stop

#script start

if [ "$1" == "shutdown" ]; then
  funcDisplayInfoBox "Warning" "We are shutting down the system" "11" "21" "5"
else
  funcDisplayInfoBox "Information" "You are not doing anything" "11" "21" "5"
  echo "not doing anything"
fi

#end of script
