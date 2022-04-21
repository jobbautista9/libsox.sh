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

source ../libsox.sh

eiq=.640 # Needed because it desyncs with the background for some reason

setTempo 89

setDefaultSynthType pluck

# intro
notes+=(
 "$si:${f[5]}"
 "$si:${e[5]}"
 "$si:${d[5]}"
 "$si:${c[5]}"
 "$si:${b[4]}"
 "$si:${c[5]}"
 "$si:${d[5]}"
 "$si:${g[4]}"
 "$si:${e[5]},${c[5]}"
)
silence si
notes+=( "$si:${f[5]},${c[5]}" )
silence si
notes+=( "$si:${e[5]},${c[5]}" )
silence dei

# verse 1
notes+=(
 "$ei:${e[4]}"
 "$si:${e[4]}"
 "$si:${e[4]}"
 "$ei:${e[4]}"
 "$si:${d[4]}"
 "$si:${c[4]}"
 "$si:${b[3]}"
 "$si:${c[4]}"
 "$si:${d[4]}"
 "$si:${a[4]}"
 "$qu:${g[4]}"

 "$si:${f[4]}"
 "$si:${f[4]}"
 "$si:${f[4]}"
 "$si:${e[4]}"
 "$si:${d[4]}"
 "$si:${e[4]}"
 "$si:${f[4]}"
 "$si:${d[4]}"
 "$si:${c[4]}"
 "$si:${b[3]}"
 "$si:${c[4]}"
 "$si:${d[4]}"
 "$qu:${e[4]}"

 "$dei:${f[4]}"
 "$si:${e[4]}"
 "$si:${d[4]}"
 "$si:${e[4]}"
 "$ei:${f[4]}"
 "$si:${e[4]}"
 "$si:${f[4]}"
 "$si:${e[4]}"
 "$si:${d[4]}"
 "$si:${cs[4]}"
 "$si:${d[4]}"
 "$ei:${e[4]}"

 "$si:${f[4]}"
 "$si:${f[4]}"
 "$si:${a[3]}"
 "$si:${a[3]}"
 "$si:${c[4]}"
 "$si:${b[3]}"
 "$si:${c[4]}"
 "$si:${d[4]}"
 "$qu:${c[4]}"
)
silence ei

# verse 2
function hi-n {
 declare -n note1=$1
 declare -n note2=$2
 declare -n note3=$3
 declare -n note4=$4
 notes+=(
  "$ei:${note1[$5]}" # hi
  "$dqu:${note1[$6]}" # laaa
  "$ei:${note1[$7]}" # hi
  "$dqu:${note2[$8]}" # laaa
  "$ei:${note2[$9]}" # hi
  "$qu:${note3[${10}]}" # la,
  "$qu:${note4[${11}]}" # la,
  "$dqu:${note3[${12}]}" # laaa
 )
}
hi-n a b c d 4 4 4 4 4 5 5 5
silence ei

# bridge between verses 2 and 3
notes+=(
 "$si:${f[4]}" # ko
 "$si:${f[4]}" # n
 "$si:${f[4]}" # na
 "$si:${e[4]}" # no
 "$si:${d[4]}" # ju
 "$si:${d[4]}" # u
 "$ei:${g[4]}" # te
 "$si:${c[4]}" # i
 "$si:${c[4]}" # on
 "$si:${b[3]}" # da
 "$si:${c[4]}" # ne
)
silence eiq

# verse 3
notes+=(
 "$si:${a[4]}"
 "$si:${a[4]}"
 "$si:${a[4]}"
 "$si:${a[4]}"
 "$ei:${a[4]}"
 "$si:${g[4]}"
 "$si:${f[4]}"
 "$si:${e[4]}"
 "$si:${f[4]}"
 "$si:${g[4]}"
 "$si:${d[5]}"
 "$qu:${c[5]}"

 "$si:${as[4]}"
 "$si:${as[4]}"
 "$si:${as[4]}"
 "$si:${a[4]}"
 "$si:${g[4]}"
 "$si:${a[4]}"
 "$si:${as[4]}"
 "$si:${g[4]}"
 "$si:${f[4]}"
 "$si:${e[4]}"
 "$si:${f[4]}"
 "$si:${g[4]}"
 "$qu:${a[4]}"

 "$dei:${as[4]}"
 "$si:${a[4]}"
 "$si:${g[4]}"
 "$si:${a[4]}"
 "$ei:${as[4]}"
 "$si:${a[4]}"
 "$si:${as[4]}"
 "$si:${a[4]}"
 "$si:${g[4]}"
 "$si:${fs[4]}"
 "$si:${g[4]}"
 "$ei:${a[4]}"

 "$si:${as[4]}"
 "$si:${as[4]}"
 "$si:${d[4]}"
 "$si:${d[4]}"
 "$si:${f[4]}"
 "$si:${e[4]}"
 "$si:${f[4]}"
 "$si:${g[4]}"
 "$qu:${f[4]}"
)
silence ei

# verse 4
hi-n d e f g 5 5 5 5 5 5 5 5
silence ei

# bridge between verses 5 and 6
notes+=(
 "$si:${as[4]}"
 "$si:${as[4]}"
 "$si:${as[4]}"
 "$si:${a[4]}"
 "$si:${g[4]}"
 "$si:${g[4]}"
 "$ei:${c[5]}"
 "$si:${f[4]}"
 "$si:${f[4]}"
 "$si:${e[4]}"
 "$si:${f[4]}"
)
silence eiq

# verse 5
notes+=(
 "$ei:${d[5]}"
 "$ei:${d[5]}"
 "$ei:${d[5]}"
 "$si:${c[5]}"
 "$si:${as[4]}"
 "$si:${a[4]}"
 "$si:${as[4]}"
 "$si:${c[5]}"
 "$si:${g[5]}"
 "$qu:${f[5]}"

 "$si:${ds[5]}"
 "$si:${ds[5]}"
 "$si:${ds[5]}"
 "$si:${d[5]}"
 "$si:${c[5]}"
 "$si:${d[5]}"
 "$si:${ds[5]}"
 "$si:${c[5]}"
 "$si:${as[4]}"
 "$si:${a[4]}"
 "$si:${as[4]}"
 "$si:${c[5]}"
 "$qu:${d[5]}"

 "$dei:${ds[5]}"
 "$si:${d[5]}"
 "$si:${c[5]}"
 "$si:${d[5]}"
 "$ei:${ds[5]}"
 "$si:${d[5]}"
 "$si:${ds[5]}"
 "$si:${d[5]}"
 "$si:${c[5]}"
 "$si:${b[4]}"
 "$si:${c[5]}"
 "$ei:${d[5]}"

 "$si:${ds[5]}"
 "$si:${ds[5]}"
 "$si:${g[4]}"
 "$si:${g[4]}"
 "$si:${as[4]}"
 "$si:${a[4]}"
 "$si:${as[4]}"
 "$si:${c[5]}"
 "$qu:${as[4]}"
)
silence ei

# verse 6
notes+=(
 "$ei:${g[5]}"
 "$dqu:${g[5]}"
 "$si:${g[5]}"
 "$si:${g[5]}"
 "$dqu:${a[5]}"
 "$si:${a[5]}"
 "$si:${a[5]}"
 "$ei:${as[5]}"
 "$ei:${as[5]}"
 "$qu:${c[6]}"
 "$dqu:${d[6]}"
)
silence ei

# bridge between verses 7 and 8
notes+=(
 "$si:${ds[5]}"
 "$si:${ds[5]}"
 "$si:${ds[5]}"
 "$si:${d[5]}"
 "$si:${c[5]}"
 "$si:${c[5]}"
 "$ei:${f[5]}"
 "$si:${as[4]}"
 "$si:${as[4]}"
 "$si:${a[4]}"
 "$si:${as[4]}"
)
silence eiq

# verse 7
notes+=(
 "$si:${g[5]}"
 "$si:${g[5]}"
 "$si:${g[5]}"
 "$si:${g[5]}"
 "$ei:${g[5]}"
 "$si:${f[5]}"
 "$si:${ds[5]}"
 "$si:${d[5]}"
 "$si:${ds[5]}"
 "$si:${f[5]}"
 "$si:${c[6]}"
 "$qu:${as[5]}"

 "$si:${gs[5]}"
 "$si:${gs[5]}"
 "$si:${gs[5]}"
 "$si:${g[5]}"
 "$si:${f[5]}"
 "$si:${g[5]}"
 "$si:${gs[5]}"
 "$si:${f[5]}"
 "$si:${ds[5]}"
 "$si:${d[5]}"
 "$si:${ds[5]}"
 "$si:${f[5]}"
 "$qu:${g[5]}"

 "$dei:${gs[5]}"
 "$si:${g[5]}"
 "$si:${f[5]}"
 "$si:${g[5]}"
 "$ei:${gs[5]}"
 "$si:${g[5]}"
 "$si:${gs[5]}"
 "$si:${g[5]}"
 "$si:${f[5]}"
 "$si:${e[5]}"
 "$si:${f[5]}"
 "$ei:${g[5]}"

 "$ei:${gs[5]}"
 "$ei:${c[5]}"
 "$si:${ds[5]}"
 "$si:${d[5]}"
 "$si:${ds[5]}"
 "$si:${f[5]}"
 "$qu:${ds[5]}"
)
silence ei

# verse 8
notes+=(
 "$si:${c[6]}"
 "$si:${c[6]}"
 "$dqu:${c[6]}"
 "$si:${c[6]}"
 "$si:${c[6]}"
 "$dqu:${d[6]}"
 "$si:${d[6]}"
 "$si:${d[6]}"
 "$ei:${ds[6]}"
 "$ei:${ds[6]}"
 "$qu:${f[6]}"
 "$dqu:${g[6]}"
)
silence ei

# bridge between verses 8 and 9
notes+=( # This is the end...
 "$si:${gs[5]}"
 "$si:${gs[5]}"
 "$si:${gs[5]}"
 "$si:${g[5]}"
 "$si:${f[5]}"
 "$si:${f[5]}"
 "$si:${as[5]}"
 "$si:${as[5]}"
 "$si:${ds[5]}"
 "$si:${ds[5]}"
 "$si:${d[5]}"
 "$si:${ds[5]}"
)
silence si # Nope, I lied!

# verse 9
notes+=(
 "$si:${a[6]}"
 "$si:${a[6]}"
 "$si:${a[6]}"
 ".842:${a[6]}" # quarter + sixth note
 "$si:${a[6]}"
 "$si:${a[6]}"
 "$si:${a[6]}"
 ".842:${b[6]}"
 "$si:${b[6]}"
 "$si:${b[6]}"
 "$si:${b[6]}"
 "$qu:${c[7]}"
 "$qu:${d[7]}"
 "$dqu:${e[7]}" # RIP vocal chords
)
silence ei

# TRUE END
notes+=(
 "$si:${f[6]}"
 "$si:${f[6]}"
 "$si:${f[6]}"
 "$si:${e[6]}"
 "$si:${d[6]}"
 "$si:${d[6]}"
 "$si:${g[6]}"
 "$si:${g[6]}"
 "$si:${c[6]}"
 "$si:${e[6]}"
 "$si:${g[6]}"
 "$ei:${c[7]}"

 "$si:${g[5]}"
 "$si:${a[5]}"
 "$si:${b[5]}"
 "$si:${c[6]}"
 "$si:${e[6]}"
 "$si:${g[6]}"
 "$ei:${c[6]}"
 "$si:${g[6]}"
 "$ha:${c[6]}"
)

createSoxPipes
