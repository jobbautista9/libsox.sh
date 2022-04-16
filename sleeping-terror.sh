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
 __        ___  ___  __          __     ___  ___  __   __   __   __
/__` |    |__  |__  |__) | |\ | / _`     |  |__  |__) |__) /  \ |__)
.__/ |___ |___ |___ |    | | \| \__>     |  |___ |  \ |  \ \__/ |  \

Sleeping Terror
Composed by ZUN for Touhou Gensoukyou: Lotus Land Story
Arranged by Job Bautista

'

setDefaultSynthType sin

# intro
setTempo 102
notes=(
 "$qu:${ds[3]}"
 "$qu:${f[3]}"
 "$qu:${fs[3]}"
 "$ei:${as[3]}"
 "$si:${cs[3]}"
 "$si:${ds[3]}"
 "$ei:${ds[3]}"
 "$ei:${ds[3]}"
 "$ei:${f[3]}"
 "$ei:${f[3]}"
 "$ei:${fs[3]}"
 "$si:${as[3]}"
 "$dei:${cs[3]}"
 "$ei:${ds[3]}"
 "$qu:${ds[3]}"
 "$qu:${f[3]}"
 "$qu:${fs[3]}"
 "$ei:${as[3]}"
 "$si:${cs[3]}"
 "$si:${d[3]}"
 "$ei:${d[3]}"
 "$ei:${ds[3]}"
 "$si:${d[3]}"
 "$si:${ds[3]}"
 "$si:${as[3]}"
 "$si:${ds[3]}"
 "$si:${gs[3]}"
 "$si:${d[3]}"
 "$qu:${f[3]}"
 "$qu:${fs[3]}"
 "$qu:${gs[3]}"
 "$ei:${as[3]}"
 "$si:${ds[4]}"
 "$ei:${as[3]}"
 "$ei:${gs[3]}"
 "$ei:${fs[3]}"
 "$ei:${fs[3]}"
 "$ei:${gs[3]}"
 "$ei:${gs[3]}"
 "$ei:${as[3]}"
 "$si:${ds[4]}"
 "$dei:${as[3]}"
 "$si:${as[3]}"
 "$si:${gs[3]}"
 "$si:${fs[3]}"
 "$si:${f[3]}"
 "$qu:${fs[3]}"
 "$qu:${gs[3]}"
 "$ei:${as[3]}"
 "$si:${ds[4]}"
 "$dei:${as[3]}"
 "$ei:${ds[4]}"
 "$ei:${d[4]}"
 "$ei:${d[4]}"
 "$ei:${ds[4]}"
 "$si:${d[4]}"
 "$si:${ds[4]}"
 "$si:${as[4]}"
 "$si:${ds[4]}"
 "$si:${gs[4]}"
 "$si:${d[4]}"
 "$qu:${f[4]}"

 "3.096:0" # 2 whole notes in 155 BPM
)
createSoxPipes
echo

# main loop
setTempo 155

# fast bridge
notes+=(
 "$si:${c[5]}"
 "$si:${gs[4]}"
 "$si:${fs[4]}"
 "$si:${e[4]}"
 "$si:${ds[4]}"
 "$si:${cs[4]}"
 "$si:${c[4]}"
 "$si:${gs[4]}"
 "$si:${fs[4]}"
 "$si:${e[4]}"
 "$si:${ds[4]}"
 "$si:${cs[4]}"
 "$si:${c[4]}"
 "$si:${e[3]}"
 "$si:${ds[3]}"
)

# verse 1
function verse1-common {
 notes+=(
  "$qu:${cs[4]}"
  "$qu:${ds[4]}"
  "$qu:${e[4]}"
  "$ei:${gs[4]}"
  "$si:${b[3]}"
  "$si:${cs[4]}"
 )
}
verse1-common
notes+=(
 "$ei:${cs[4]}"
 "$ei:${cs[4]}"
 "$ei:${ds[4]}"
 "$ei:${ds[4]}"
 "$ei:${e[4]}"
 "$si:${gs[4]}"
 "$dei:${b[3]}"
 "$ei:${cs[4]}"
)
verse1-common
notes+=(
 "$ei:${c[4]}"
 "$ei:${c[4]}"
 "$ei:${cs[4]}"
 "$si:${c[4]}"
 "$si:${cs[4]}"
 "$si:${gs[4]}"
 "$si:${cs[4]}"
 "$si:${cs[4]}"
 "$si:${fs[4]}"
 "$si:${c[4]}"
 "$qu:${ds[4]}"
 "$qu:${e[4]}"
 "$qu:${fs[4]}"
 "$ei:${gs[4]}"
 "$si:${cs[5]}"
 "$dei:${gs[4]}"
 "$ei:${fs[4]}"
 "$ei:${e[4]}"
 "$ei:${e[4]}"
 "$ei:${fs[4]}"
 "$ei:${fs[4]}"
 "$ei:${gs[4]}"
 "$si:${cs[5]}"
 "$si:${gs[4]}"
 "$si:${gs[4]}"
 "$si:${fs[4]}"
 "$si:${e[4]}"
 "$si:${ds[4]}"
 "$qu:${e[4]}"
 "$qu:${fs[4]}"
 "$ei:${gs[4]}"
 "$si:${cs[5]}"
 "$dei:${gs[4]}"
 "$ei:${cs[5]}"
 "$ei:${c[5]}"
 "$ei:${c[5]}"
 "$ei:${cs[5]}"
 "$si:${c[5]}"
 "$si:${cs[5]}"
 "$si:${gs[5]}"
 "$si:${cs[5]}"
 "$si:${fs[5]}"
 "$si:${c[5]}"
 "$qu:${ds[5]}"
)

# verse 2
notes+=( "$qu:${gs[3]}" )
function verse2-common1 {
 notes+=(
  "$si:${cs[4]}"
  "$si:${ds[4]}"
  "$si:${e[4]}"
  "$si:${gs[4]}"
  "$si:${cs[5]}"
  "$si:${ds[5]}"
  "$si:${e[5]}"
  "$si:${gs[5]}"
  "$si:${e[5]}"
  "$si:${ds[5]}"
  "$si:${cs[5]}"
  "$si:${gs[4]}"
 )
}
verse2-common1
notes+=(
 "$qu:${fs[3]}"

 "$si:${b[3]}"
 "$si:${cs[4]}"
 "$si:${ds[4]}"
 "$si:${fs[4]}"
 "$si:${b[4]}"
 "$si:${cs[5]}"
 "$si:${ds[5]}"
 "$si:${fs[5]}"
 "$si:${ds[5]}"
 "$si:${cs[5]}"
 "$si:${b[4]}"
 "$si:${fs[4]}"

 "$qu:${e[3]}"
)
verse2-common1
notes+=(
 "$qu:${ds[3]}"

 "$si:${c[4]}"
 "$si:${cs[4]}"
 "$si:${ds[4]}"
 "$si:${fs[4]}"
 "$si:${c[5]}"
 "$si:${cs[5]}"
 "$si:${ds[5]}"
 "$si:${fs[5]}"
 "$si:${ds[5]}"
 "$si:${cs[5]}"
 "$si:${c[5]}"
 "$si:${fs[4]}"

 "$qu:${cs[4]}"
)
function verse2-common2 {
 notes+=(
  "$si:${cs[5]}"
  "$si:${gs[4]}"
  "$si:${fs[4]}"
  "$si:${e[4]}"
  "$si:${cs[5]}"
  "$si:${gs[4]}"
  "$si:${fs[4]}"
  "$si:${e[4]}"
  "$si:${cs[5]}"
  "$si:${gs[4]}"
  "$si:${fs[4]}"
  "$si:${e[4]}"
 )
}
verse2-common2
notes+=(
 "$qu:${ds[4]}"

 "$si:${ds[5]}"
 "$si:${gs[4]}"
 "$si:${fs[4]}"
 "$si:${e[4]}"
 "$si:${ds[5]}"
 "$si:${gs[4]}"
 "$si:${fs[4]}"
 "$si:${e[4]}"
 "$si:${ds[5]}"
 "$si:${gs[4]}"
 "$si:${fs[4]}"
 "$si:${e[4]}"

 "$qu:${cs[4]}"
)
verse2-common2
notes+=(
 "$qu:${c[4]}"

 "$si:${c[5]}"
 "$si:${gs[4]}"
 "$si:${fs[4]}"
 "$si:${e[4]}"

 "$qu:${cs[4]}"
 "$qu:${ds[4]}"
)

# verse 3
function verse3 {
 function verse3-common {
  notes+=(
   "$ei:${e[4]}"
   "$ei:${fs[4]}"
   "$ei:${gs[4]}"
   "$ei:${cs[4]}"
   "$si:${ds[4]}"
   "$si:${e[4]}"
   "$ei:${ds[4]}"
   "$ei:${cs[4]}"
   "$ei:${b[3]}"
   "$qu:${cs[4]}"
  )
 }
 verse3-common
 notes+=(
  "$ei:${gs[3]}"
  "$ei:${cs[4]}"
  "$ei:${ds[4]}"
  "$ei:${e[4]}"
  "$ei:${ds[4]}"
  "$ei:${gs[3]}"
 )
 verse3-common
 notes+=(
  "$ei:${ds[4]}"
  "$ei:${gs[4]}"
  "$ei:${fs[4]}"
  "$ei:${ds[4]}"
  "$ei:${e[4]}"
  "$ei:${cs[4]}"

  "$ei:${gs[4]}"
  "$ei:${cs[5]}"
  "$ei:${ds[5]}"
  "$ei:${gs[4]}"
  "$si:${e[5]}"
  "$si:${fs[5]}"
  "$ei:${e[5]}"
  "$ei:${ds[5]}"
  "$ei:${b[4]}"
  "$si:${fs[4]}"
  "$dei:${gs[4]}"

  "$ei:${b[3]}"
  "$ei:${cs[4]}"
  "$ei:${ds[4]}"

  "$ei:${cs[4]}"
  "$ei:${ds[4]}"
  "$ei:${e[4]}"
  "$ei:${e[4]}"
  "$ei:${fs[4]}"
  "$ei:${gs[4]}"
  "$ei:${cs[4]}"
  "$si:${ds[4]}"
  "$si:${e[4]}"
  "$ei:${ds[4]}"
  "$ei:${cs[4]}"
  "$ei:${c[4]}"
  "$ha:${cs[4]}"
  "$ha:${ds[4]}"
 )
}
verse3; verse3;

# verse 4
function verse4-common {
 notes+=(
  "$qu:${as[3]}"
  "$qu:${c[4]}"
  "$qu:${cs[4]}"
  "$ei:${f[4]}"
  "$si:${gs[3]}"
  "$si:${as[3]}"
 )
}
verse4-common
notes+=(
 "$ei:${as[3]}"
 "$ei:${as[3]}"
 "$ei:${c[4]}"
 "$ei:${c[4]}"
 "$ei:${cs[4]}"
 "$si:${f[4]}"
 "$dei:${gs[3]}"
 "$ei:${as[3]}"
)
verse4-common
notes+=(
 "$ei:${a[3]}"
 "$ei:${a[3]}"
 "$ei:${as[3]}"
 "$si:${a[3]}"
 "$si:${as[3]}"
 "$si:${f[4]}"
 "$si:${as[3]}"
 "$si:${ds[4]}"
 "$si:${a[3]}"
 "$qu:${c[4]}"
 "$qu:${cs[4]}"
 "$qu:${ds[4]}"
 "$ei:${f[4]}"
 "$si:${as[4]}"
 "$dei:${f[4]}"
 "$ei:${ds[4]}"
 "$ei:${cs[4]}"
 "$ei:${cs[4]}"
 "$ei:${ds[4]}"
 "$ei:${ds[4]}"
 "$ei:${f[4]}"
 "$si:${as[4]}"
 "$si:${f[4]}"
 "$si:${f[4]}"
 "$si:${ds[4]}"
 "$si:${cs[4]}"
 "$si:${c[4]}"
 "$qu:${cs[4]}"
 "$qu:${ds[4]}"
 "$ei:${f[4]}"
 "$si:${as[4]}"
 "$dei:${f[4]}"
 "$ei:${as[4]}"
 "$ei:${a[4]}"
 "$ei:${a[4]}"
 "$ei:${as[4]}"
 "$si:${a[4]}"
 "$si:${as[4]}"
 "$si:${f[5]}"
 "$si:${as[4]}"
 "$si:${ds[5]}"
 "$si:${a[4]}"
 "$qu:${c[5]}"
)

# verse 5
notes+=( "$qu:${f[3]}" )
function verse5-common1 {
 notes+=(
  "$si:${as[3]}"
  "$si:${c[4]}"
  "$si:${cs[4]}"
  "$si:${f[4]}"
  "$si:${as[4]}"
  "$si:${c[5]}"
  "$si:${cs[5]}"
  "$si:${f[5]}"
  "$si:${cs[5]}"
  "$si:${c[5]}"
  "$si:${as[4]}"
  "$si:${f[4]}"
 )
}
verse5-common1
notes+=(
 "$qu:${ds[3]}"

 "$si:${gs[3]}"
 "$si:${as[3]}"
 "$si:${c[4]}"
 "$si:${ds[4]}"
 "$si:${gs[4]}"
 "$si:${as[4]}"
 "$si:${c[5]}"
 "$si:${ds[5]}"
 "$si:${c[5]}"
 "$si:${as[4]}"
 "$si:${gs[4]}"
 "$si:${ds[4]}"

 "$qu:${cs[3]}"
)
verse5-common1
notes+=(
 "$qu:${c[3]}"

 "$si:${a[3]}"
 "$si:${as[3]}"
 "$si:${c[4]}"
 "$si:${ds[4]}"
 "$si:${a[4]}"
 "$si:${as[4]}"
 "$si:${c[5]}"
 "$si:${ds[5]}"
 "$si:${c[5]}"
 "$si:${as[4]}"
 "$si:${a[4]}"
 "$si:${ds[4]}"

 "$qu:${as[3]}"
)
function verse5-common2 {
 notes+=(
  "$si:${as[4]}"
  "$si:${f[4]}"
  "$si:${ds[4]}"
  "$si:${cs[4]}"
  "$si:${as[4]}"
  "$si:${f[4]}"
  "$si:${ds[4]}"
  "$si:${cs[4]}"
  "$si:${as[4]}"
  "$si:${f[4]}"
  "$si:${ds[4]}"
  "$si:${cs[4]}"
 )
}
verse5-common2
notes+=(
 "$qu:${c[4]}"

 "$si:${c[5]}"
 "$si:${f[4]}"
 "$si:${ds[4]}"
 "$si:${cs[4]}"
 "$si:${c[5]}"
 "$si:${f[4]}"
 "$si:${ds[4]}"
 "$si:${cs[4]}"
 "$si:${c[5]}"
 "$si:${f[4]}"
 "$si:${ds[4]}"
 "$si:${cs[4]}"

 "$qu:${as[3]}"
)
verse5-common2
notes+=(
 "$qu:${a[3]}"

 "$si:${a[4]}"
 "$si:${f[4]}"
 "$si:${ds[4]}"
 "$si:${cs[4]}"

 "$qu:${as[3]}"
 "$qu:${c[4]}"
)

# verse 6
function verse6 {
 function verse6-common {
  notes+=(
   "$ei:${cs[4]}"
   "$ei:${ds[4]}"
   "$ei:${f[4]}"
   "$ei:${as[3]}"
   "$si:${c[4]}"
   "$si:${cs[4]}"
   "$ei:${c[4]}"
   "$ei:${as[3]}"
   "$ei:${gs[3]}"
   "$qu:${as[3]}"
  )
 }
 verse6-common
 notes+=(
  "$ei:${f[3]}"
  "$ei:${as[3]}"
  "$ei:${c[4]}"
  "$ei:${cs[4]}"
  "$ei:${c[4]}"
  "$ei:${f[3]}"
 )
 verse6-common
 notes+=(
 "$ei:${c[4]}"
 "$ei:${f[4]}"
 "$ei:${ds[4]}"
 "$ei:${c[4]}"
 "$ei:${cs[4]}"
 "$ei:${as[3]}"

 "$ei:${f[4]}"
 "$ei:${as[4]}"
 "$ei:${c[5]}"
 "$ei:${f[4]}"
 "$si:${cs[5]}"
 "$si:${ds[5]}"
 "$ei:${cs[5]}"
 "$ei:${c[5]}"
 "$ei:${gs[4]}"
 "$si:${ds[4]}"
 "$dei:${f[4]}"

 "$ei:${gs[3]}"
 "$ei:${as[3]}"
 "$ei:${c[4]}"

 "$ei:${as[3]}"
 "$ei:${c[4]}"
 "$ei:${cs[4]}"
 "$ei:${cs[4]}"
 "$ei:${ds[4]}"
 "$ei:${f[4]}"
 "$ei:${as[3]}"
 "$si:${c[4]}"
 "$si:${cs[4]}"
 "$ei:${c[4]}"
 "$ei:${as[3]}"
 "$ei:${a[3]}"
 "$qu:${as[3]}"

 "$ei:${cs[4]}"
 "$ei:${f[4]}"

 "$qu:${c[4]}"

 "$ei:${cs[4]}"
 "$ei:${f[4]}"
 )
}
verse6; verse6;

# verse 7
function verse7 {
 function verse7-common {
  notes+=(
   "$ei:${d[4]}"
   "$ei:${e[4]}"
   "$ei:${fs[4]}"
   "$ei:${b[3]}"
   "$si:${cs[4]}"
   "$si:${d[4]}"
   "$ei:${cs[4]}"
   "$ei:${b[3]}"
   "$ei:${a[3]}"
   "$qu:${b[3]}"
  )
 }
 verse7-common
 notes+=(
  "$ei:${fs[3]}"
  "$ei:${b[3]}"
  "$ei:${cs[4]}"
  "$ei:${d[4]}"
  "$ei:${cs[4]}"
  "$ei:${fs[3]}"
 )
 verse7-common
 notes+=(
  "$ei:${cs[4]}"
  "$ei:${fs[4]}"
  "$ei:${e[4]}"
  "$ei:${cs[4]}"
  "$ei:${d[4]}"
  "$ei:${b[3]}"

  "$ei:${fs[4]}"
  "$ei:${b[4]}"
  "$ei:${cs[5]}"
  "$ei:${fs[4]}"
  "$si:${d[5]}"
  "$si:${e[5]}"
  "$ei:${d[5]}"
  "$ei:${cs[5]}"
  "$ei:${a[4]}"
  "$si:${e[4]}"
  "$dei:${fs[4]}"

  "$ei:${a[3]}"
  "$ei:${b[3]}"
  "$ei:${cs[4]}"

  "$ei:${b[3]}"
  "$ei:${cs[4]}"
  "$ei:${d[4]}"
  "$ei:${d[4]}"
  "$ei:${e[4]}"
  "$ei:${fs[4]}"
  "$ei:${b[3]}"
  "$si:${cs[4]}"
  "$si:${d[4]}"
  "$ei:${cs[4]}"
  "$ei:${b[3]}"
  "$ei:${as[3]}"
  "$qu:${b[3]}"

  "$ei:${d[4]}"
  "$ei:${fs[4]}"

  "$qu:${cs[4]}"

  "$ei:${d[4]}"
  "$ei:${fs[4]}"
 )
}
verse7; verse7;
notes+=( "$fu:0" )

createSoxPipes
