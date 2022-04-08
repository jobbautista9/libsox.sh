#!/bin/bash
if [ -n "$1" ]
then
 play -S -V1 "${@:2}" repeat "$1" # $1 = how many times to repeat
else
 echo "Error: Missing repeat argument"
 exit 1
fi