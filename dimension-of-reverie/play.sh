#!/bin/sh

cat art.txt
./dimension-of-reverie.sh | tail -n +7 | xargs ../mysox.sh loop.wav

./dimension-of-reverie.sh | head -n +7 | xargs play -S -V1
play -S -V1 loop.wav repeat 1
