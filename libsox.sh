#!/bin/bash

: '
Copyright (C) 2022 Job Bautista

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
'

# notes

c=(16 32 65 130 261 523 1046 2093 4186)
cs=(17 34 69 138 277 554 1108 2217 4434)
d=(18 36 73 146 293 587 1174 2349 4698)
ds=(19 38 77 155 311 622 1244 2489 4978)
e=(20 41 82 164 329 659 1318 2637 5274)
f=(21 43 87 174 349 698 1396 2793 5587)
fs=(23 46 92 184 369 739 1479 2959 5919)
g=(24 48 97 195 391 783 1567 3135 6271)
gs=(25 51 103 207 415 830 1661 3322 6644)
a=(27 55 110 220 440 880 1760 3520 7040)
as=(29 58 116 233 466 932 1864 3729 7458)
b=(30 61 123 246 493 987 1975 3951 7902)

# flats as references to their respective sharps
declare -n df db ef eb gf gb af ab bf bb
df="cs" db="cs"
ef="ds" eb="ds"
gf="fs" gb="fs"
af="gs" ab="gs"
bf="as" bb="as"

declare -rg c cs d ds e f g gs a as b df db ef eb gf gb af ab bf bb

function setTempo {
 declare -g BPM=$1

 # durations
 declare -g fu=$(echo "scale=3; 240 / $BPM" | bc -l) # Whole note
 declare -g ha=$(echo "scale=3; 120 / $BPM" | bc -l) # Half note
 declare -g qu=$(echo "scale=3; 60 / $BPM" | bc -l) # Quarter note
 declare -g ei=$(echo "scale=3; 30 / $BPM" | bc -l) # Eighth note
 declare -g si=$(echo "scale=3; 15 / $BPM" | bc -l) # Sixteenth note
 declare -g dha=$(echo "scale=3; 190 / $BPM" | bc -l) # Dotted-half note
 declare -g dqu=$(echo "scale=3; 90 / $BPM" | bc -l) # Dotted-quarter note
 declare -g dei=$(echo "scale=3; 45 / $BPM" | bc -l) # Dotted-eighth note
 declare -g dsi=$(echo "scale=3; 22.5 / $BPM" | bc -l) # Dotted-sixteenth note
 declare -g tqu=$(echo "scale=3; 40 / $BPM" | bc -l) # Triplet-quarter note
 declare -g tei=$(echo "scale=3; 20 / $BPM" | bc -l) # Triplet-eighth note
 declare -g tsi=$(echo "scale=3; 10 / $BPM" | bc -l) # Triplet-sixteenth note
}

declare -ag notes # In the following format - "$duration:${key[pitch]}"
 # For a two-note harmony - "$duration:${key1[pitch1]},${key2[pitch2]}"
 # 3-note: "$duration:${k1[p1]},${k2[p2]}*${k3[p3]}"
 # 4-note: "$duration:${k1[p1]},${k2[p2]}*${k3[p3]}_${k4[p4]}"
 # 5: "$duration:${k1[p1]},${k2[p2]}*${k3[p3]}_${k4[p4]}@${k5[p5]}"
 # 6: "$duration:${k1[p1]},${k2[p2]}*${k3[p3]}_${k4[p4]}@${k5[p5]}^${k6[p6]}"

declare -g defaultsynth="sin" # for backwards compatibility with previous
synthtype="$defaultsynth"     # child scripts that only used sine

function setDefaultSynthType {
 defaultsynth=$1
 synthtype="$defaultsynth"
}

function silence { # needed because pluck synth doesn't support zero frequency
 declare -n duration=$1 # we want $1 to be recognized as a variable name
 createSoxPipes # necessary because we will be changing synth type
 synthtype="sin" # sin, square, sawtooth, trapezium, and exp support freq=0
 notes+=( "$duration:0" )
 createSoxPipes # get the silence printed before we return to default synth
 synthtype="$defaultsynth"
}

function createSoxPipes { # default behavior
 for note in "${notes[@]}"
 do
   printf '"|sox -n -p synth '$(echo "$note" |
            sed 's/:.*//')' '$synthtype' '$(echo "$note" |
            sed 's/.*://;s/,.*//')' '$synthtype' '$(echo "$note" |
            sed 's/.*://;s/.*,//;s/\*.*//')'"\n'
 done
 notes=() # You usually want to reset the notes array after calling this
}

function enable3456Harmony { # enables 3/4/5/6-note harmony support
 # The reason this is not default behavior is because in ALSA, it requires an
 # audio processing buffer size of 16384 bytes. A larger buffer can cause sox
 # to be slow to respond. Also, SoX in ALSA for some reason requires at least
 # 4 channels if you want to hear the third note in a 3-note harmony.
 function createSoxPipes { # redefine createSoxPipes
  if [[ -n $notes ]] # Check if notes array has items; otherwise do nothing
  then
   for note in "${notes[@]}"
   do
    printf '"|sox -n -p synth '$(echo "$note" |
             sed 's/:.*//')' '$synthtype' '$(echo "$note" |
             sed 's/.*://;s/,.*//')' '$synthtype' '$(echo "$note" |
             sed 's/.*://;s/.*,//;s/\*.*//')' '$synthtype' '$(echo "$note" |
             sed 's/.*,//;s/.*://;s/.*\*//;
             s/_.*//')' '$synthtype' '$(echo "$note" | sed 's/.*,//;
             s/.*://;s/.*\*//;s/@.*//;s/\^.*//;
             s/.*_//')' '$synthtype' '$(echo "$note" | sed 's/.*_//;
             s/.*@//;s/\^.*//;s/.*\*//;s/.*://;
             s/.*,//')' '$synthtype' '$(echo "$note" | sed 's/.*,//;
             s/.*\*//;s/.*_//;s/.*://;s/.*@//;s/.*\^//')'"\n'
   done
   notes=()
  fi
 }
}
