#!/bin/bash
#interactive script for user input

echo "Enter your first  name"
read FIRSTNAME
echo "Enter your last name"
read LASTNAME
echo "Enter your age"
read AGE

echo "Hello $FIRSTNAME $LASTNAME"
echo "You will be `expr $AGE + 10` years old in 10 years"

