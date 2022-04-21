#/bin/sh

./foreground.sh | xargs ../mysox.sh foreground.wav
./background.sh | xargs ../mysox.sh background.wav
