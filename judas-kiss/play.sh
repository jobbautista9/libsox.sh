#!/bin/sh

cat art.txt
./judas-kiss.sh | tail -n +60 | xargs ../mysox.sh loop.wav

./judas-kiss.sh | head -n +60 | xargs play -S -V1
play -S -V1 loop.wav repeat 1
