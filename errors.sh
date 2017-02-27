#!/bin/bash
#This is to show exit status types

set -e

expr 1 + 5
echo $?

rm abcd.sh
echo $?

expr 10 + 10
echo $?
