#!/bin/bash
#example of function return 

YES=0
NO=1
FIRST=$1
SECOND=$2
THIRD=$3

#function definitions start

#check the command line paramaeters passed

funcCheckParams () {
  if [ ! -z "$THIRD" ]; then
     echo "We got three parameters"
     return $YES
  else
     echo "We did not get 3 parameters"
     return $NO
  fi
}

#function definitions stop

#script start

funcCheckParams
RETURN_VALS=$?

if [ "$RETURN_VALS" -eq "0" ]; then
  echo "We recieved 3 Params and they are $FIRST, $SECOND, $THIRD"
else
  echo "Must use func_return.sh [param1] [param2] [param3]"
  exit 1
fi



