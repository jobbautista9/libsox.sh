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
      ___  __   __   ___          __   ___     __  ___       __   __
\  / |__  /__` /__` |__  |       /  \ |__     /__`  |   /\  |__) /__`
 \/  |___ .__/ .__/ |___ |___    \__/ |       .__/  |  /~~\ |  \ .__/

                                  _      _
                                // \ \_//

 __        __        ___ ___     __   ___     __  ___       __
/  `  /\  /__` |__/ |__   |     /  \ |__     /__`  |   /\  |__)
\__, /~~\ .__/ |  \ |___  |     \__/ |       .__/  |  /~~\ |  \

星の器 ~ Casket of Star
Composed by ZUN for Touhou Gensoukyou: Lotus Land Story
Arranged by Job Bautista

'

setTempo 170

# intro
function intro-common {
 notes+=(
  "$ei:${e[4]}"
  "$ei:${a[4]}"
  "$ei:${b[4]}"
  "$qu:${e[4]}"
  "$ei:${a[4]}"
  "$ei:${b[4]}"
  "$qu:${d[5]}"
  "$ei:${c[5]}"
  "$ei:${b[4]}"
  "$qu:${a[4]}"
 )
}
function intro-part1 {
 notes+=(
  "$ei:${e[4]}"
  "$ei:${a[4]}"
  "$ei:${b[4]}"
 )
}
intro-common; intro-part1;
intro-common; intro-part1;
intro-common;
notes+=(
 "$ei:${b[4]}"
 "$ei:${c[5]}"
 "$ei:${d[5]}"
 "$ei:${e[5]}"
 "$qu:0"
 "$ei:${e[5]}"
 "$qu:0"
 "$ei:${e[5]}"
 "0.02:0"
 "$ei:${e[5]}"
 "$qu:0"
 "$qu:${e[5]}"
 "0.02:0"
 "$ei:${e[5]}"
 "$ei:${d[5]}"
 "$ei:${c[5]}"
 "$ei:${b[4]}"
)

# verse 1
function verse1-common {
 notes+=(
  "$dqu:${a[4]}"
  "$qu:${e[4]}"
  "$ei:${a[4]}"
  "$ei:${e[5]}"
  "$ei:${d[5]}"
  "$ei:0"
  "$ei:${b[4]}"
  "$ei:0"
  "$qu:${g[4]}"
  "$ei:${a[4]}"
  "$qu:${b[4]}"
 )
}
function verse1-part1 {
 notes+=(
  "$ei:${a[4]}"
  "$ei:${b[4]}"
  "$ei:${c[5]}"
  "$qu:${b[4]}"
  "$ei:${g[4]}"
  "$ei:${e[4]}"
  "$qu:${a[4]}"
 )
}
function verse1-part2 {
 notes+=(
  "$ei:${c[5]}"
  "$ei:${d[5]}"
  "$ei:${e[5]}"
  "$qu:${d[5]}"
 )
}
function verse1-backgrnd {
 notes+=(
  "$ei:${a[3]}"
  "$ei:${e[4]}"
  "$ei:${a[3]}"
  "$ei:0"
  "$ei:${a[3]}"
  "$ei:${e[4]}"
  "$ei:${a[3]}"
 )
}
function verse1-repeat {
 verse1-common; verse1-part1;
 verse1-backgrnd
 verse1-common
}
verse1-repeat
verse1-part2
notes+=( "$ei:${b[4]}" "$ei:${g[4]}" "$qu:${a[4]}" )
verse1-backgrnd
verse1-repeat
verse1-part2
notes+=( "$ei:${e[5]}" "$ei:${b[4]}" "$qu:${c[5]}" )
verse1-backgrnd

# verse 2
notes+=(
 "$ha:${a[4]}"
 "$ei:${g[4]}"
 "$ei:${e[4]}"
 "$ei:${b[4]}"
 "$ha:${a[4]}"
 "0.02:0"
)
function verse2-common {
  notes+=(
  "$ei:${a[4]}"
  "$ei:${b[4]}"
  "$ei:${c[5]}"
  "$ei:${d[5]}"
 )
}
verse2-common
notes+=(
 "$qu:${e[5]}"
 "$qu:${a[5]}"
 "$qu:${g[5]}"
 "$ei:${a[5]}"
 "$ha:${e[5]}"
 "0.02:0"
 "$ei:${e[5]}"
 "$ei:${d[5]}"
 "$si:${c[5]}"
 "$si:${d[5]}"
 "$ei:${b[4]}"

 "$ha:${a[4]}"
 "$dqu:${b[4]}"
 "$ha:${c[5]}"
)
verse2-common
notes+=(
 "$ha:${e[5]}"
 "$qu:${d[5]}"
 "$ei:${a[5]}"
 "$ha:${gs[5]}"

 "$ei:${e[6]}"
 "$ei:${d[6]}"
 "$ei:${c[6]}"
 "$ei:${b[5]}"
 "$ei:${gs[5]}"
 "$ha:0"
)

# verse 3
notes+=(
 "$qu:${cs[4]}"
 "$qu:${e[4]}"
)
function verse3-common1 {
 notes+=(
  "$dei:${fs[5]}"
  "$dei:${e[5]}"
  "$ei:${cs[5]}"
  "$ei:0"
  "$ei:${cs[6]}"
  "$ei:${b[5]}"
  "$ei:${a[5]}"
  "$dei:${gs[5]}"
  "$dei:${a[5]}"
  "$ei:${gs[5]}"
  "$dei:${fs[5]}"
  "$dei:${e[5]}"
 )
}
verse3-common1
notes+=(
 "$ei:${cs[5]}"
 "$ei:0"
 "$ei:${fs[5]}"
 "$ei:${e[5]}"
 "$ei:${cs[5]}"
 "$dei:${f[5]}"
 "$dei:${b[5]}"
 "$ei:${a[5]}"
 "$ha:${a[5]}"
 "$ei:${a[5]}"
 "$ei:${gs[5]}"
 "$ei:${e[5]}"
 "$ei:${cs[5]}"
)
verse3-common1
notes+=(
 "$ei:${b[4]}"
 "$ei:0"
 "$ei:${fs[4]}"
 "$ei:${gs[4]}"
 "$ei:${a[4]}"
 "$dei:${gs[4]}"
 "$dei:${b[4]}"
 "$ei:${cs[5]}"

 "$dei:${cs[4]}"
 "$dei:${fs[4]}"
 "$ei:${gs[4]}"
 "$ei:${a[4]}"
 "$ei:${b[4]}"
 "$ei:${cs[5]}"
 "$ei:${e[5]}"
)
function verse3-common2 {
 notes+=(
  "$dei:${g[5]}"
  "$dei:${f[5]}"
  "$ei:${d[5]}"
  "$ei:0"
  "$ei:${d[6]}"
  "$ei:${c[6]}"
  "$ei:${as[5]}"
  "$dei:${a[5]}"
  "$dei:${as[5]}"
  "$ei:${a[5]}"
  "$dei:${g[5]}"
  "$dei:${f[5]}"
 )
}
verse3-common2
notes+=(
 "$ei:${d[5]}"
 "$ei:0"
 "$ei:${g[5]}"
 "$ei:${f[5]}"
 "$ei:${d[5]}"
 "$dei:${fs[5]}"
 "$dei:${c[6]}"
 "$ei:${as[5]}"
 "$ha:${as[5]}"
 "$ei:${as[5]}"
 "$ei:${a[5]}"
 "$ei:${f[5]}"
 "$ei:${d[5]}"
)
verse3-common2
notes+=(
 "$ei:${c[5]}"
 "$ei:0"
 "$ei:${g[4]}"
 "$ei:${f[4]}"
 "$ei:${d[4]}"
 "$dei:${fs[4]}"
 "$dei:${c[5]}"
 "$ei:${d[5]}"
 "$fu:${as[4]}"
)

execute loop yes $1
