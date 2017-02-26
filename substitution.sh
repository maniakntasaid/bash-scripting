#!/bin/bash
#This script is intended to show how command substitution works

shopt -s expand_aliases

alias TODAY="date"
alias UFILES="find /home -user user"

TODAYSDATE=`TODAY`
USERFILES=`UFILES`

echo "Today's Date: $TODAYSDATE"
echo "User Files: $USERFILES"
