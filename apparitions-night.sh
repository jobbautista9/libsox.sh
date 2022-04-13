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
      __   __        __    ___    __        __      __  ___
 /\  |__) |__)  /\  |__) |  |  | /  \ |\ | /__`    /__`  |   /\  |    |__/
/~~\ |    |    /~~\ |  \ |  |  | \__/ | \| .__/    .__/  |  /~~\ |___ |  \

                  ___       ___            __       ___
                   |  |__| |__     |\ | | / _` |__|  |
                   |  |  | |___    | \| | \__> |  |  |

Apparitions Stalk the Night
Composed by ZUN for Touhou Koumakyou: the Embodiment of Scarlet Devil
Arranged by Job Bautista

'

setTempo 145

function verse-1-2-common {
 # verse 1
 notes+=(
  "$ei:${ds[5]}"
  "$si:${fs[4]}"
  "$si:${cs[5]}"
  "$si:${f[4]}"
  "$si:${gs[4]}"
  "$si:${as[4]}"
  "$si:${fs[4]}"
  "$si:${as[4]}"
  "$si:${f[4]}"
  "$si:${gs[4]}"
  "$si:${ds[4]}"
  "$si:${f[4]}"
  "$si:${cs[4]}"
  "$ei:${ds[5]}"
  "$si:${f[4]}"
  "$si:${cs[5]}"
  "$si:${ds[5]}"
  "$si:${fs[4]}"
  "$si:${f[4]}"
  "$si:${cs[5]}"
  "$si:${ds[5]}"
  "$si:${fs[4]}"

  "$si:${f[4]}"
  "$si:${cs[5]}"
  "$si:${gs[4]}"
  "$ei:${as[4]}"
  "$si:${fs[4]}"
  "$si:${gs[4]}"
 )

 # verse 2
 notes+=(
  "$ei:${as[4]}"
  "$si:${f[4]}"
  "$si:${gs[4]}"
  "$si:${ds[4]}"
  "$si:${fs[4]}"
  "$si:${cs[4]}"
  "$si:${f[4]}"
  "$si:${gs[3]}"
  "$si:${as[3]}"
  "$si:${ds[4]}"
  "$si:${gs[3]}"
  "$si:${as[3]}"
  "$si:${ds[4]}"
  "$ei:${as[4]}"
  "$si:${b[3]}"
  "$si:${ds[4]}"
  "$si:${f[4]}"
  "$si:${gs[4]}"
  "$si:${ds[4]}"
  "$si:${fs[4]}"
  "$si:${cs[4]}"
  "$si:${f[4]}"

  "$si:${b[3]}"
  "$si:${ds[4]}"
  "$si:${gs[3]}"
  "$si:${as[3]}"
 )
}
verse-1-2-common
notes+=(
 "$ei:${gs[4]}"
 "$si:${f[4]}"
 "$si:${fs[4]}"
)
verse-1-2-common
notes+=(
 "$si:${cs[4]}"
 "$si:${ds[4]}"
 "$si:${b[3]}"
 "$si:${gs[3]}"
)

# verse 3
notes+=(
 "$ha:${as[4]}"
 "$dei:${ds[4]}"
 "$dei:${fs[4]}"
 "$dei:${as[4]}"
)
for i in {1..9}
do
 notes+=( "$si:${ds[5]}" ".002:0" ) # added silence for consistency with below
done
notes+=(
 "$si:${fs[4]}"
 "$si:${f[4]}"
 "$si:${cs[5]}"
 "$si:${ds[5]}"
 "$si:${fs[4]}"
 "$si:${f[4]}"
 "$si:${cs[5]}"

 "$ha:${ds[5]}"
 "$dei:${fs[5]}"
 "$dei:${f[5]}"
 "$dei:${cs[5]}"
)
for i in {1..9}
do
 notes+=( "$si:${as[4]}" ".002:0" ) # without silence you cant hear each A# note
done
notes+=(
 "$si:${fs[5]}"
 "$si:${f[5]}"
 "$si:${gs[4]}"
 "$si:${fs[5]}"
 "$si:${ds[5]}"

 "$ha:${as[4]}"
 "$dei:${cs[5]}"
 "$dei:${cs[5]}"
 "$ei:${cs[5]}"
)
for i in {1..8}
do
 notes+=( "$si:${as[4]}" ".002:0" )
done
notes+=(
 "$si:${ds[4]}"
 "$si:${f[4]}"
 "$si:${fs[4]}"
 "$si:${gs[4]}"
 "$si:${as[4]}"
 "$si:${fs[5]}"

 "$ha:${ds[5]}"
 "$si:${f[3]}"
 "$si:${f[4]}"
 "$si:${gs[4]}"
 "$si:${cs[5]}"
 "$si:${gs[4]}"
 "$si:${f[4]}"
 "$si:${cs[4]}"
 "$si:${gs[4]}"

 "$dqu:${d[5]}"
 "$ei:${d[5]}"
 "$qu:0"
)

# verse 4
notes+=( "$ei:${ds[5]}" "$ei:${fs[5]}" )
function verse4 {
 function verse4-common1 {
  notes+=(
   "$ei:${gs[5]}"
   "$ei:${b[5]}"
   "$si:${as[5]}"
   "$si:${gs[5]}"
   "$ei:${fs[5]}"
   "$qu:${gs[5]}"
  )
 }
 verse4-common1
 notes+=( "$ei:${ds[5]}" "$ei:${fs[5]}" )
 verse4-common1
 notes+=(
  "$si:${cs[5]}"
  "$si:${ds[5]}"
  "$si:${fs[5]}"
  "$si:${g[5]}"
  "$dha:${gs[5]}"

  "$si:${ds[5]}"
  "$si:${cs[6]}"
  "$si:${b[5]}"
  "$si:${fs[5]}"
  "$si:${gs[5]}"
  "$si:${ds[5]}"
  "$si:${b[4]}"
  "$si:${fs[5]}"
  "$si:${cs[5]}"
  "$si:${as[4]}"
  "$si:${ds[5]}"
  "$si:${b[4]}"
  "$si:${gs[4]}"
  "$si:${cs[5]}"
  "$si:${as[4]}"
  "$si:${gs[4]}"
  "$si:${fs[4]}"
 )
 function verse4-common2 {
  notes+=(
   "$ei:${gs[4]}"
   "$ei:${b[4]}"
   "$si:${as[4]}"
   "$si:${gs[4]}"
   "$ei:${fs[4]}"
   "$qu:${gs[4]}"
  )
 }
 verse4-common2
 notes+=( "$ei:${ds[4]}" "$ei:${fs[4]}" )
 verse4-common2
 notes+=(
  "$si:${cs[4]}"
  "$si:${ds[4]}"
  "$si:${fs[4]}"
  "$si:${g[4]}"
  "$dha:${gs[4]}"

  "$si:${ds[4]}"
  "$si:${cs[5]}"
  "$si:${b[4]}"
  "$si:${as[4]}"
 )
}
verse4
notes+=(
 "$si:${gs[4]}"
 "$si:${ds[4]}"
 "$si:${b[3]}"
 "$si:${fs[4]}"
 "$si:${cs[4]}"
 "$si:${as[4]}"
 "$si:${gs[4]}"
 "$si:${ds[4]}"
 "$si:${b[3]}"
 "$si:${cs[5]}"
 "$si:${as[4]}"
 "$si:${b[4]}"
 "$si:${cs[5]}"
)
verse4
notes+=( "$fu:${gs[5]}" )

createSoxPipes
