#/bin/bash

./left.sh | xargs ../mysox.sh left.wav
./right.sh | xargs ../mysox.sh right.wav
