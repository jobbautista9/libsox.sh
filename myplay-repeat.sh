#!/bin/bash
if [ -n "$2" ]
then
 declare -r audioProcBuffer=$2
else
 declare -r audioProcBuffer=8192
fi

if [ -n "$1" ]
then
 play --buffer $audioProcBuffer -S -V1 "${@:3}" repeat "$1" # $1 = how many times to repeat
else
 echo "Error: Missing repeat argument"
 exit 1
fi
