#!/bin/bash
#demo of a dialog box which diplays a menu

#global vars
MENUBOX=${MENUBOX=dialog}

#func declaration start
funcDisplayMenuBox () {
  $MENUBOX --title "[ M A I N M E N U ]" --menu "Use Up/Down arrows to move and select or the Number of your choice and hit Return" 15 45 4 1 "Display Hello World" 2 "Display Goodbye World" 3 "Display Nothing" X "Exit" 2>choice.txt
}

#function declarations end

#script starts
funcDisplayMenuBox 

case "`cat choice.txt`" in 
  1) echo "Hello World";;
  2) echo "Goodbye World";;
  3) echo "Nothing";;
  4) echo "Exit";;
esac

