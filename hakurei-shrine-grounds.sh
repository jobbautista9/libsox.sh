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
                     __   ___       __        __          ___
|__|  /\  |__/ |  | |__) |__  |    /__` |__| |__) | |\ | |__
|  | /~~\ |  \ \__/ |  \ |___ |    .__/ |  | |  \ | | \| |___

               __   __   __             __   __
              / _` |__) /  \ |  | |\ | |  \ /__`
              \__> |  \ \__/ \__/ | \| |__/ .__/

Hakurei Shrine Grounds
Composed by ZUN for Touhou Fuumaroku: the Story of Eastern Wonderland
Arranged by Job Bautista

'

setTempo 160

# intro

notes=( "$dha:${gs[4]}" )
function intro-common1 {
 notes+=(
  "$qu:${gs[4]}"
  "$dha:${gs[4]}"
  "$qu:${gs[4]}"
  "$ha:${gs[4]}"
  "$qu:${fs[4]}"
  "$qu:${b[4]}"
 )
}

intro-common1
notes+=(
 "$ha:${gs[4]}"

 "$qu:${ds[4]}"

 "$qu:${gs[4]}"
 "$dha:${gs[4]}"
)
intro-common1
notes+=( "$ha:${cs[5]}" )
function intro-common2 {
 notes+=(
  "$qu:${cs[5]}"
  "$qu:${ds[5]}"
  "$dha:${e[5]}"
  "$qu:${e[5]}"
  "$ha:${ds[5]}"
  "$ha:${b[4]}"
 )
}
intro-common2
notes+=( "$dha:${gs[4]}" )
function intro-qghg { notes+=( "$qu:${gs[3]}" "$ha:${gs[3]}" ); };
intro-qghg
intro-common2
notes+=( "$dha:${cs[5]}" )
intro-qghg
intro-common2
notes+=( "$dha:${gs[4]}" )
intro-qghg
intro-common2
notes+=(
 "$ha:${cs[5]}"

 "$ha:30"
 "$qu:30"
 "$qu:30"
 "$ei:30"
 "$ei:25"
 "$si:25"
 "$si:25"
 "$ei:25"
)

# verse 1
for i in {1..6}
do
 notes+=(
  "$ei:${ds[3]}"
  "$ei:${ds[3]}"

  "$qu:${cs[4]}"
 )
done
notes+=(
 "$qu:${cs[4]}"
 "$qu:${cs[4]}"

 "$ei:${b[3]}"
 "$ei:${b[3]}"
 "$ei:${gs[3]}"
 "$ei:${b[3]}"
)

# verse 2
function verse2-common {
 notes+=(
  "$dqu:${cs[4]}"
  "$ei:${b[3]}"
  "$qu:${cs[4]}"
  "$ei:${gs[3]}"
  "$ei:${fs[3]}"
  "$ei:${gs[3]}"
  "$ei:${b[3]}"
  "$si:${gs[3]}"
  "$si:${b[3]}"
  "$ei:${fs[3]}"
  "$qu:${gs[3]}"
  "$ei:${gs[3]}"
  "$ei:${b[3]}"

  "$dqu:${cs[4]}"
  "$ei:${e[4]}"
  "$qu:${cs[4]}"
  "$ei:${cs[4]}"
  "$ei:${b[3]}"
  "$dqu:${cs[4]}"
  "$ei:${gs[4]}"
  "$qu:${fs[4]}"
 )
}
verse2-common
notes+=( "$ei:${e[4]}" "$ei:${ds[4]}" )
verse2-common
notes+=( "$qu:${b[4]}" )

# verse 3
function qgs_to_ecsegs {
 notes+=(
  "$qu:${gs[3]}"

  "$ei:${cs[3]}"
  "$ei:${gs[3]}"
  "$ei:${cs[3]}"
  "$ei:${gs[3]}"
 )
}
function verse3-common {
 qgs_to_ecsegs
 notes+=( "$qu:${gs[3]}" )
 qgs_to_ecsegs
 notes+=(
  "$qu:${gs[3]}"
  "$ha:${gs[3]}"
  "$qu:${fs[3]}"
  "$qu:${b[3]}"
 )
}
verse3-common
qgs_to_ecsegs
notes+=( "$qu:${gs[3]}" )
verse3-common
notes+=( "$ha:${cs[4]}" "$qu:${cs[4]}" "$qu:${ds[4]}" )

# verse 4
function verse4 {
 function qe_to_eaee {
  notes+=(
   "$qu:${e[4]}"
 
   "$ei:${a[2]}"
   "$ei:${e[3]}"
   "$ei:${a[2]}"
   "$ei:${e[3]}"
  )
 }
 qe_to_eaee
 notes+=(
  "$qu:${e[4]}"
  "$ha:${ds[4]}"
  "$ha:${b[3]}"
  "$qu:${gs[3]}"
 )
 function ecsegs-5 {
  for i in {1..5}
  do
   notes+=( "$ei:${cs[3]}" "$ei:${gs[3]}" )
  done
 }
 ecsegs-5
 notes+=( "$qu:${cs[4]}" "$qu:${ds[4]}" )
 qe_to_eaee
 notes+=(
  "$qu:${e[4]}"
  "$ha:${fs[4]}"
  "$ha:${b[4]}"
 )
}
verse4
notes+=( "$qu:${gs[4]}" )
ecsegs-5
notes+=( "$qu:${cs[4]}" "$qu:${ds[4]}" )
verse4
notes+=( "$qu:${gs[4]}" )
function verse4-csdsfgs {
 notes+=(
  "$si:${cs[4]}"
  "$si:${ds[4]}"
  "$si:${f[4]}"
  "$si:${gs[4]}"
 )
}
verse4-csdsfgs
notes+=(
 "$si:${cs[5]}"
 "$si:${gs[4]}"
 "$si:${f[4]}"
 "$si:${ds[4]}"

 "$si:${cs[4]}"
 "$si:${gs[3]}"
 "$si:${f[3]}"
 "$si:${ds[3]}"

 "$si:${cs[3]}"
 "$si:${ds[3]}"
 "$si:${f[3]}"
 "$si:${gs[3]}"
)
verse4-csdsfgs
notes+=(
 "$si:${cs[5]}"
 "$si:${gs[4]}"
 "$si:${e[4]}"
 "$si:${cs[4]}"

 "$si:${gs[3]}"
 "$si:${e[3]}"
 "$si:${cs[3]}"
 "$si:${gs[2]}"
)

# verse 5
function verse5-common {
 notes+=(
  "$qu:${gs[3]}"
  "0.015:0"
  "$qu:${gs[3]}"
  "0.015:0"
  "$ei:${gs[3]}"
  "0.015:0"
  "$qu:${gs[3]}"
  "0.015:0"
  "$qu:${gs[3]}"
  "0.015:0"
  "$ei:${gs[3]}"
  "0.015:0"
  "$qu:${gs[3]}"
  "0.015:0"
  "$ei:${gs[3]}"
  "0.015:0"
  "$qu:${gs[3]}"
  "0.015:0"
 )
}
function verse5-common-eg {
 verse5-common
 notes+=( "$ei:${gs[3]}" "0.015:0" )
}
verse5-common-eg
verse5-common-eg
verse5-common
notes+=( "$ei:${b[3]}" "0.015:0" )
verse5-common-eg

# verse 6
notes+=(
 "$dha:${cs[5]}"
 "$qu:${cs[5]}"
 "$dha:${cs[5]}"
 "$qu:${cs[5]}"
 "$dha:${gs[4]}"
 "$qu:${gs[4]}"
 "$ha:${gs[4]}"
 "$qu:${gs[4]}"
 "$qu:${b[4]}"

 "$dha:${cs[5]}"
 "$qu:${cs[5]}"
 "$ha:${fs[5]}"
 "$qu:${e[5]}"
 "$qu:${ds[5]}"
 "$dha:${e[5]}"
 "$qu:${e[5]}"
 "$ha:${e[5]}"
 "$ha:${e[5]}"

 "$dha:${e[5]}"
 "$qu:${e[5]}"
 "$ha:${ds[5]}"
 "$ha:${b[4]}"
 "$dqu:${gs[4]}"
 "$fu:${cs[5]}"
)
function verse6-backgrnd {
 notes+=(
  "$ei:${gs[3]}"
  "0.015:0"
  "$qu:${gs[3]}"
  "0.015:0"
  "$ei:${gs[3]}"
  "0.015:0"
 )
}
verse6-backgrnd
notes+=(
 "$dha:${e[4]}"
 "$qu:${e[4]}"
 "$ha:${ds[4]}"
 "$ha:${b[3]}"
 "$dqu:${gs[3]}"
 "$fu:${cs[4]}"
)
verse6-backgrnd

createSoxPipes
