#!/bin/bash
#functions with paramaeters

#function definitions - start

#calculate age in days

funcAgeInDays () {
  echo "Hello $1, You are $2 years old"
  echo "That makes you approximately `expr $2 \* 365` days old"
}

#script start 
clear

echo "Enter Username"
read USERNAME
echo "Enter you age"
read USERAGE

#calculate the number of days
funcAgeInDays $USERNAME $USERAGE

