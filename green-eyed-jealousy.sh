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

source libsox.sh

declare textintro='
 __   __   ___  ___          ___      ___  __
/ _` |__) |__  |__  |\ | __ |__  \ / |__  |  \
\__> |  \ |___ |___ | \|    |___  |  |___ |__/

      ___            __        __
   | |__   /\  |    /  \ |  | /__` \ /
\__/ |___ /~~\ |___ \__/ \__/ .__/  |

Green-Eyed Jealousy
Composed by ZUN for Touhou Chireiden: Subterranean Animism
Arranged by Job Bautista

'

enable3456Harmony

setTempo 80

setDefaultSynthType square

# intro
notes+=( "$ei:${b[4]},${e[3]}" )
function s_alt {
 declare -n note1=$1
 declare -n note2=$2
 notes+=( "$si:${note1[$3]}" "$si:${note2[$4]}" )
}
for i in 1 2; do s_alt b g 3 3; done;
notes+=(
 "$ei:${b[4]},${e[3]}"
 "$ei:${fs[5]}"
 "$ei:${g[5]}"
 "$ei:${a[5]},${ds[3]}"
)
for i in 1 2; do s_alt ds fs 4 3; done;
notes+=( "$ei:${b[5]},${ds[3]}" )
s_alt ds fs 4 3
notes+=( "$ei:${fs[5]}" "$ei:${g[5]},${d[3]}" )
for i in 1 2; do s_alt d a 4 3; done;
notes+=( "$ei:${b[5]},${d[3]}" )
s_alt d a 4 3
notes+=(
 "$ei:${fs[5]}"
 "$ei:${g[5]},${cs[3]}"

 "$si:${cs[4]}"
 "$si:${e[4]}"
 "$si:${cs[4]}"
 "$si:${a[3]}"

 "$ei:${b[5]},${cs[3]}"
)
s_alt cs e 4 4
notes+=( "$ei:${e[6]}" "$ei:${e[6]},${c[3]}" )
s_alt e c 4 4
notes+=(
 "$si:${c[6]},${e[4]}"
 "$si:${d[6]},${c[4]}"
 "$si:${e[6]}"

 "$si:${c[4]}"

 "$si:${fs[6]},${e[4]}"

 "$si:${c[4]}"

 "$si:${g[6]},${c[4]}"

 "$si:${c[4]}"

 "$si:${g[6]}"

 "$si:${g[3]}"
 "$si:${b[3]}"
 "$si:${g[3]}"

 "$si:${b[5]},${b[3]}"
 "$si:${fs[6]},${g[3]}"
 "$si:${g[6]}"

 "$si:${g[3]}"

 "$si:${a[6]},${b[3]}"

 "$si:${g[3]}"

 "$si:${b[6]},${b[3]}"

 "$si:${g[3]}"

 "$si:${b[6]}"
)
for i in 1 2; do s_alt a c 3 4; done; notes+=( "$si:${a[3]}" );
notes+=(
 "$ei:${a[6]},${a[2]}"
 "$ei:${g[6]}"
 "$ei:${fs[6]}"
 "$ei:${e[6]},${b[2]}"
 "$ei:${ds[6]}"
 "$ei:${e[6]}"
 "$si:${ds[6]}"
 "$si:${b[5]},${fs[3]}"
 "$si:${a[5]},${ds[3]}"
 "$si:${g[5]},${fs[3]}"
 "$si:${fs[5]},${ds[3]}"
 "$si:${ds[5]},${fs[3]}"
)

# verse 1
notes+=( "$ei:${b[4]},${g[4]}*${e[3]}" )
for i in 1 2; do s_alt b g 3 3; done;
notes+=(
 "$ei:${b[4]},${g[4]}*${e[3]}"
 "$ei:${fs[5]},${a[4]}"
 "$ei:${g[5]},${b[4]}"
 "$ei:${a[5]},${fs[5]},${ds[3]}"
)
for i in 1 2; do s_alt ds fs 4 3; done;
notes+=( "$ei:${b[5]},${g[5]}*${ds[3]}" )
s_alt ds fs 4 3
notes+=( "$ei:${fs[5]},${ds[5]}" "$ei:${g[5]},${cs[5]}*${d[3]}" )
for i in 1 2; do s_alt d a 4 3; done;
notes+=( "$ei:${b[5]},${g[5]}*${d[3]}" )
s_alt d a 4 3
notes+=(
 "$ei:${fs[5]},${ds[5]}"
 "$ei:${g[5]},${cs[5]}*${cs[3]}"

 "$si:${cs[4]}"
 "$si:${e[4]}"
 "$si:${cs[4]}"
 "$si:${a[3]}"

 "$ei:${b[5]},${g[5]}*${cs[3]}"
)
s_alt cs e 4 4
notes+=( "$ei:${e[6]},${g[5]}" "$ei:${e[6]},${c[6]}*${c[3]}" )
s_alt e c 4 4
notes+=(
 "$si:${b[4]},${g[4]}*${e[4]}"
 "$si:${e[5]},${b[4]}*${c[4]}"
 "$ei:${fs[5]},${d[5]}*${c[3]}"
 "$ei:${g[5]},${e[5]}"
 "$ei:${b[5]},${g[5]}"
 "$ei:${e[6]},${b[5]}*${b[2]}"
)
s_alt b g 3 3
notes+=(
 "$ei:${b[4]},${g[4]}"
 "$ei:${e[5]},${b[4]}*${b[2]}"
 "$ei:${fs[5]},${a[4]}"
 "$ei:${g[5]},${b[4]}"
 "$ei:${a[5]},${c[5]}*${a[2]}"
)
for i in 1 2; do s_alt c a 4 3; done;
notes+=(
 "$ei:${g[5]},${e[5]}*${a[2]}"
 "$ei:${fs[5]},${d[5]}"
 "$ei:${e[5]},${b[4]}"
 "$ei:${ds[5]},${b[4]}*${b[2]}"

 "$si:${b[4]},${g[4]}*${ds[4]}"
 "$si:${a[4]},${fs[4]}*${fs[3]}"
 "$si:${g[4]},${ds[4]}"
 "$si:${fs[3]}"
 "$si:${fs[4]},${ds[4]}*${a[3]}"
 "$si:${fs[3]}"
 "$si:${ds[4]}"
 "$si:${fs[3]}"
 "$si:${fs[4]},${ds[4]}"
 "$si:${fs[3]}"
)

# verse 2
notes+=( "$ei:${e[5]},${b[4]}*${g[3]}_${e[3]}@${c[3]}" )
silence ei
notes+=(
 "$si:${c[3]}"
 "$si:${g[3]},${e[3]}"

 "$ei:${d[5]},${b[4]}"
 "$ei:${a[4]},${fs[4]}*${c[3]}"
 "$ei:${g[4]},${e[4]}*${g[3]}_${e[3]}@${c[3]}"
 "$ei:${fs[4]},${a[3]}*${fs[3]}_${d[3]}"
 "$ei:${d[4]},${fs[3]}"
 "$si:${a[3]},${fs[3]}"
 "$si:${a[3]},${fs[3]}"
 "$ei:${b[3]},${e[3]}*${b[2]}_${g[2]}"
)
silence ei
notes+=(
 "$ei:${e[5]},${b[4]}*${g[2]}"
 "$ei:${e[5]},${b[4]}*${g[3]}_${e[3]}@${c[3]}"
)
silence ei
notes+=(
 "$si:${c[3]}"
 "$si:${g[3]},${e[3]}"

 "$ei:${d[5]},${a[4]}*${a[3]}_${fs[3]}@${d[3]}"
 "$ei:${g[5]},${e[5]}"
 "$ei:${fs[5]},${d[5]}"
 "$ei:${e[5]},${b[4]}*${e[3]}_${b[2]}@${g[2]}^${e[2]}"
)
silence ei
function s_alt {
 declare -n note1=$1
 declare -n note2=$2
 declare -n note3=$3
 notes+=( "$si:${note1[$4]}" "$si:${note2[$5]},${note3[$6]}" )
}
for i in {1..4}; do s_alt e b e 2 2 3; done;
notes+=( "$ei:${e[6]},${b[5]}" )
for i in 1 2; do s_alt c e g 3 3 3; done;
notes+=(
 "$ei:${d[6]},${b[5]}"
 "$ei:${a[5]},${fs[5]}"
 "$ei:${g[5]},${e[5]}"
 "$ei:${fs[5]},${a[4]}"
 "$ei:${d[5]},${fs[4]}"
 "$ei:${a[4]},${fs[4]}"
 "$ei:${b[4]},${g[4]}"
)
s_alt g b e 2 2 3
for i in 1 2; do notes+=( "$ei:${e[6]},${b[5]}" ); done;
for i in 1 2; do s_alt c e g 3 3 3; done;
notes+=(
 "$ei:${d[6]},${a[5]}"
 "$ei:${g[6]},${e[6]}"
 "$ei:${fs[6]},${d[6]}"
 "$ei:${e[6]},${b[5]}"
)
for i in {1..3}; do s_alt e b e 2 2 3; done;
notes+=(
 ".096:${e[5]}"
 ".096:${b[4]}"
 ".096:${a[4]}"
 ".096:${g[4]}"
 ".096:${e[4]}"
 ".096:${b[3]}"
 ".096:${a[3]}"
 ".096:${g[3]}"
)
# verse 3 which is like intro
function verse-3-4-common {
 notes+=( "$ei:${b[4]},${g[4]}" )
 for i in 1 2; do s_alt e g b 3 3 3; done;
 notes+=(
  "$ei:${b[4]},${g[4]}"
  "$ei:${fs[5]},${a[4]}"
  "$ei:${g[5]},${b[4]}"
  "$ei:${a[5]},${fs[5]}*${b[4]}"
 )
 for i in 1 2; do s_alt ds fs b 3 3 3; done;
 notes+=( "$ei:${b[5]},${g[5]}" )
 s_alt ds fs b 3 3 3
 notes+=( "$ei:${fs[5]},${ds[5]}" "$ei:${g[5]},${e[5]}" )
 for i in 1 2; do s_alt d fs a 3 3 3; done;
 notes+=( "$ei:${b[5]},${g[5]}" )
 s_alt d fs a 3 3 3
 notes+=( "$ei:${fs[5]},${a[4]}" "$ei:${g[5]},${cs[5]}" )
}
verse-3-4-common
for i in 1 2; do s_alt cs e a 3 3 3; done;
notes+=( "$ei:${b[5]},${g[5]}" )
s_alt cs e a 3 3 3
notes+=( "$ei:${e[6]},${g[5]}" "$ei:${e[6]},${b[5]}" )
s_alt c e g 3 3 3
notes+=(
 "$si:${c[6]},${g[5]}"
 "$si:${d[6]},${a[5]}"
 "$ei:${e[6]},${b[5]}"
 "$ei:${fs[6]},${d[6]}"
 "$ei:${g[6]},${e[6]}"
 "$ei:${g[6]},${e[6]}"
)
s_alt b d g 2 3 3
notes+=(
 "$si:${b[5]},${g[5]}"
 "$si:${fs[6]},${d[6]}"
 "$ei:${g[6]},${e[6]}"
 "$ei:${a[6]},${fs[6]}"
 "$ei:${b[6]},${g[6]}"
 "$ei:${b[6]},${g[6]}"
)
for i in 1 2; do s_alt a c e 2 3 3; done;
notes+=(
 "$ei:${a[6]},${fs[6]}"
 "$ei:${g[6]},${e[6]}"
 "$ei:${fs[6]},${a[5]}"
 "$ei:${e[6]},${g[5]}"
 "$ei:${ds[6]},${fs[5]}"
 "$ei:${e[6]},${g[5]}"

 "$si:${ds[6]},${b[2]}"
 "$si:${b[5]},${fs[3]}*${ds[3]}"
 "$si:${a[5]},${b[2]}"
 "$si:${g[5]},${fs[3]}*${ds[3]}"
 "$si:${fs[5]},${b[2]}"
 "$si:${ds[5]},${fs[3]}*${ds[3]}"
)

# verse 4
verse-3-4-common
s_alt cs e a 3 3 3
notes+=(
 "$si:${g[5]},${cs[5]}*${cs[3]}"
 "$si:${a[3]},${e[3]}"
 "$ei:${b[5]},${g[5]}"
)
s_alt cs e a 3 3 3
notes+=( "$ei:${e[6]},${g[5]}" "$ei:${e[6]},${b[5]}" )
s_alt c e g 3 3 3
notes+=(
 "$si:${b[4]},${g[4]}"
 "$si:${e[5]},${b[4]}"
 "$ei:${fs[5]},${d[5]}"
 "$ei:${g[5]},${e[5]}"
 "$ei:${b[5]},${g[5]}"
 "$ei:${e[6]},${b[5]}"
)
s_alt b d g 2 3 3
notes+=(
 "$ei:${b[4]},${g[4]}"
 "$ei:${e[5]},${b[4]}"
 "$ei:${fs[5]},${a[4]}"
 "$ei:${g[5]},${b[4]}"
 "$ei:${a[5]},${fs[5]}*${b[4]}"
)
for i in 1 2; do s_alt a c e 2 3 3; done;
notes+=(
 "$ei:${g[5]},${e[5]}"
 "$ei:${fs[5]},${d[5]}"
 "$ei:${e[5]},${b[4]}"
 "$ei:${ds[5]},${b[4]}"
 "$si:${b[4]},${g[4]}"
 "$si:${a[4]},${fs[4]}"
 "$ei:${g[4]},${ds[4]}"
 "$ei:${fs[4]},${ds[4]}"
 "$ei:${ds[4]},${a[3]}"
 "$ei:${fs[4]},${ds[4]}"
)

# verse 5
notes+=( "$ei:${e[5]},${b[4]}*${g[3]}_${e[3]}@${c[3]}" )
silence ei
notes+=(
 "$si:${c[3]}"
 "$si:${g[3]},${e[3]}"

 "$ei:${d[5]},${b[4]}"
 "$ei:${a[4]},${fs[4]}"
 "$ei:${g[4]},${e[4]}*${g[3]}_${e[3]}@${c[3]}"
 "$ei:${fs[4]},${a[3]}*${fs[3]}_${d[3]}"
 "$ei:${d[4]},${fs[3]}"
 "$si:${a[3]},${fs[3]}*${d[3]}"
 "$si:${a[3]},${fs[3]}"
 "$ei:${b[3]},${e[3]}*${b[2]}_${g[2]}"
)
silence ei
for i in 1 2; do notes+=( "$ei:${e[5]},${b[4]}" ); done;
silence ei
notes+=(
 "$si:${c[3]}"
 "$si:${g[3]},${e[3]}"

 "$ei:${d[5]},${a[4]}*${a[3]}_${fs[3]}@${d[3]}"
 "$ei:${g[5]},${e[5]}"
 "$ei:${fs[5]},${d[5]}"
 "$ei:${e[5]},${g[4]}*${e[3]}_${b[2]}@${g[2]}^${e[2]}"
)
silence ei
for i in {1..4}; do s_alt e b e 2 2 3; done;
notes+=( "$ei:${e[6]},${b[5]}" )
for i in 1 2; do s_alt c e g 3 3 3; done;
notes+=(
 "$ei:${d[6]},${b[5]}"
 "$ei:${a[5]},${fs[5]}"
 "$ei:${g[5]},${e[5]}"
 "$ei:${fs[5]},${a[4]}"
 "$ei:${d[5]},${fs[4]}"
 "$ei:${a[4]},${fs[4]}"
 "$ei:${b[4]},${g[4]}"
)
s_alt g b e 2 2 3
for i in 1 2; do notes+=( "$ei:${e[6]},${b[5]}" ); done;
for i in 1 2; do s_alt c e g 3 3 3; done;
notes+=(
 "$ei:${d[6]},${a[5]}"
 "$ei:${g[6]},${e[6]}"
 "$ei:${fs[6]},${d[6]}"
 "$ei:${e[6]},${b[5]}"
)
for i in {1..3}; do s_alt e b e 2 2 3; done;
notes+=(
 ".096:${e[6]}"
 ".096:${b[5]}"
 ".096:${a[5]}"
 ".096:${g[5]}"
 ".096:${e[5]}"
 ".096:${b[4]}"
 ".096:${a[4]}"
 ".096:${g[4]}"
)

createSoxPipes
