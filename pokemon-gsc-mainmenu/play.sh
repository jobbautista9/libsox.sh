#!/bin/sh

cat art.txt
sleep 1
play -V1 "|sox -n -p synth .75 sin 293 sin 391"
# d5 = 293Hz, g5 = 391Hz
./combined.sh | xargs ../myplay-repeat.sh 6
