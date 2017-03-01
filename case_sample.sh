#!/bin/bash
#demo of the case statement

echo "Main Menu"
echo "======================"
echo "1) Eggs"
echo "2) Milk"
echo "3) Pancakes"
echo""
echo "Enter your choice"
read ORDER

case $ORDER in 
  1)
    echo "Eggs will be ready in 10 Mins";;
  2)
    echo "Milk will be ready in 5 Mins";;
  3)
    echo "Pancakes will be ready in 15 Mins";;
  *)
    echo "Sorry, Wrong choice";;
esac
