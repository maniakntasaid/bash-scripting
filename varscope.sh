#!/bin/bash
#global variable
GLOBALVAR="GlobalVariable"

echo "$GLOBALVAR"
echo "$LOCALVAR" #will not be printed. Variabl will be available after first use
funcExample () {

LOCALVAR="Local variable"
echo "$LOCALVAR"
echo "$GLOBALVAR"
}

funcExample
echo "$GLOBALVAR"
echo "$LOCALVAR"

