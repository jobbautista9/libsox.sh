#!/bin/sh

cat art.txt
sleep 1
play -M -V1 "|sox -n -p synth .75 sin 293" "|sox -n -p synth .75 sin 391"
# d5 = 293Hz, g5 = 391Hz
play -M -V1 left.wav right.wav repeat 6
