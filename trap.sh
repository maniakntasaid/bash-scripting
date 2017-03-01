#!/bin/bash

clear

trap 'echo "-Please Press Q to Exit.."' SIGINT SIGTERM SIGTSTP 

while [ "$CHOICE" != "Q" ] && [ "$CHOICE" != "q" ]; do
   echo "Main Menu"
   echo "==================="
   echo "1) Milk"
   echo "2) Eggs"
   echo "3) Bread"
   echo ""
   read CHOICE

   clear
done





