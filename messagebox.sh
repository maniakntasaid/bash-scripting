#!/bin/bash
#example of a simple message box

#global variables
MSGBOX=${MSGBOX=dialog}
TITLE="Default"
MESSAGE="Default Message"
XCOORD=10
YCOORD=20

#function declaration start
funcDisplayMsgBox () {
  $MSGBOX --title "$1" --msgbox "$2" "$3" "$4"
}
#declaration ends

#script start
if [ "$1" == "shutdown" ]; then
  funcDisplayMsgBox "Warning!" "Press OK to shutdown" "10" "20"
  echo "Shutting Down now"
else
  funcDisplayMsgBox "Error" "Pass shutdown as parameter" "10" "20"
echo "Not doing anything"
fi

