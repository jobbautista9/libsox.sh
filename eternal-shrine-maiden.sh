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
 ___ ___  ___  __                     __        __          ___
|__   |  |__  |__) |\ |  /\  |       /__` |__| |__) | |\ | |__
|___  |  |___ |  \ | \| /~~\ |___    .__/ |  | |  \ | | \| |___

                                __   ___
                   |\/|  /\  | |  \ |__  |\ |
                   |  | /~~\ | |__/ |___ | \|

Eternal Shrine Maiden
Composed by ZUN for Touhou Reiiden: The Highly Responsive to Prayers
Arranged by Job Bautista

'

setTempo 150

# intro
function intro-ccg {
 notes+=(
  "$ei:${c[3]}"
  "$ei:${c[4]}"
  "$ei:${g[3]}"
 )
}
intro-ccg
function intro-dsfg {
 notes+=(
 "$si:${ds[4]}"
 "$si:${f[4]}"
 "$ei:${g[4]}"
 )
}
intro-dsfg; intro-dsfg;
function intro-cccg {
 notes+=( "$ei:${c[4]}" )
 intro-ccg
}
intro-cccg
notes+=(
 "$ei:${c[4]}"
 "$ei:${ds[3]}"
 "$ei:${c[4]}"
 "$ei:${g[3]}"
)
intro-cccg
intro-dsfg; intro-dsfg;
intro-cccg
notes+=(
 "$ei:${ds[4]}"
 "$ei:${ds[4]}"
 "$ei:${f[4]}"
 "$qu:${g[4]}"
)

createSoxPipes # loop no $1

notes=()

# verse 1
function verse1-common {
 function verse1-cdsf {
  notes+=(
   "$dqu:${c[4]}"
   "$qu:${ds[4]}"
   "$ei:${f[4]}"
  )
 }
 function verse1-cdsfg {
  verse1-cdsf
  notes+=( "$qu:${g[4]}" )
 }
 verse1-cdsfg; verse1-cdsfg;
 verse1-cdsf
 notes+=(
  "$qu:${d[4]}"
  "$dqu:${d[4]}"
  "$dqu:${ds[4]}"
 )
}
verse1-common
notes+=( "$ei:${f[4]}" "$ei:${g[4]}" )
verse1-common
notes+=( "$qu:${gs[4]}" )

# verse 2
function verse2-common {
 function dsg { notes+=( "$dqu:${ds[4]}" "$dqu:${g[4]}" ); };
 dsg
 function dsdsg { notes+=( "$qu:${ds[4]}" ); dsg; };
 dsdsg; dsdsg;
 notes+=( "$qu:${d[4]}" "$dqu:${d[4]}" )
}
verse2-common
notes+=(
 "$dqu:${ds[4]}"
 "$ei:${f[4]}"
 "$ei:${g[4]}"
)
verse2-common
notes+=(
 "$dqu:${gs[4]}"
 "$ei:${g[4]}"
 "$ei:${f[4]}"
)

# verse 3
function verse3 {
 function verse3-common {
  notes+=(
   "$dqu:${d[4]}"
   "$dqu:${ds[4]}"
   "$qu:${f[4]}"
   "$qu:${d[4]}"
   "$ei:${ds[4]}"
  )
 }
 verse3-common
 notes+=(
  "$qu:${d[4]}"
  "$ei:${c[4]}"
  "$qu:${as[3]}"
  "$dqu:${c[4]}"
  "$dqu:${g[4]}"
  "$qu:${c[4]}"
  "$dqu:${c[4]}"
  "1:${g[4]}"
 )
 verse3-common
 notes+=(
  "$qu:${f[4]}"
  "$ei:${as[4]}"
  "$qu:${f[4]}"
  "$dqu:${ds[4]}"
  "$dqu:${d[4]}"
  "$qu:${c[4]}"
  "$qu:${d[4]}"
  "$ei:${ds[4]}"
  "1:${f[4]}"
 )
}
verse3; verse3

# verse 4
function verse4-part1 {
 notes+=(
  "$ha:${ds[4]}"
  "$qu:${d[4]}"
  "$ei:${c[4]}"
  "1:${d[4]}"
  "$qu:${c[4]}"
  "$ei:${as[3]}"
  "$qu:${c[4]}"

  "$si:${c[5]}"
  "$si:${g[4]}"
  "$si:${d[5]}"
  "$si:${g[4]}"
  "$si:${ds[5]}"
 )
}
function verse4-common {
 notes+=(
  "$si:${g[4]}"
  "$si:${f[5]}"
  "$si:${g[4]}"
  "$si:${ds[5]}"
  "$si:${g[4]}"
  "$si:${d[5]}"
  "$si:${g[4]}"
  "$si:${ds[5]}"
  "$si:${g[4]}"
  "$si:${c[5]}"
  "$si:${g[4]}"
  "$si:${c[5]}"
  "$si:${g[4]}"
  "$si:${d[5]}"
  "$si:${g[4]}"
  "$si:${ds[5]}"
  "$si:${g[4]}"
 )
}
function verse4-cd { notes+=( "$qu:${c[4]}" "$qu:${d[4]}" ); };
function verse4-common-cd { verse4-common; verse4-cd; };
verse4-part1; verse4-common-cd;
verse4-part1; verse4-common-cd;
function verse4-part2 {
 notes+=(
  "$ha:${g[4]}"
  "$qu:${f[4]}"
  "$ei:${ds[4]}"
  "1:${f[4]}"
  "$qu:${ds[4]}"
  "$ei:${d[4]}"
  "$qu:${ds[4]}"
  "$qu:${c[4]}"

  "$si:${ds[5]}"
 )
}
verse4-part2; verse4-common-cd;
verse4-part2; verse4-common;
notes+=(
 "$si:${d[5]}"
 "$si:${g[4]}"
 "$si:${ds[5]}"
 "$si:${g[4]}"
 "$si:${f[5]}"
 "$si:${g[4]}"
 "$si:${d[5]}"
 "$si:${g[4]}"
)

# verse 5
notes+=(
 "$fu:${ds[4]}"
 "$fu:${f[4]}"
 "$fu:${d[4]}"

 "$dqu:${g[4]}"
 "$ei:${ds[4]}"
 "$ei:${ds[4]}"
 "$ei:${f[4]}"
 "$qu:${g[4]}"
)

createSoxPipes # loop yes $1
