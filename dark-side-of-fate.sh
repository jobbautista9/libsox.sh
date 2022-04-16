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
 __        __           __     __   ___     __   ___     ___      ___  ___
|  \  /\  |__) |__/    /__` | |  \ |__     /  \ |__     |__   /\   |  |__
|__/ /~~\ |  \ |  \    .__/ | |__/ |___    \__/ |       |    /~~\  |  |___

Dark Side of Fate
Composed by ZUN for Touhou Fuujinroku: Mountain of Faith
Arranged by Job Bautista

'

setTempo 168

setDefaultSynthType pluck

# intro
function dqu-e {
 declare -n note1=$1
 notes+=(
  "$dqu:${note1[4]},${note1[3]}"
  "$ei:${note1[4]},${note1[3]}"
 )
}
dqu-e f; dqu-e fs; dqu-e g; dqu-e gs;
function e_4 {
 declare -n note1=$1
 for i in {1..4}; do notes+=( "$ei:${note1[4]},${note1[3]}" ); done;
}
e_4 f; e_4 fs; e_4 g; e_4 gs;
createSoxPipes

# verse 1
setDefaultSynthType sin

function verse1 {
 notes+=(
  "$ei:${cs[5]},${e[4]}"
  "$si:${gs[4]}"
  "$si:${cs[5]}"
  "$si:${ds[5]}"
  "$si:${e[5]}"
  "$ei:${fs[5]},${ds[5]}"
  "$dqu:${cs[5]},${a[4]}"
  "$ei:${cs[5]},${a[4]}"
  "$ei:${ds[5]},${b[4]}"
  "$si:${cs[5]}"
  "$si:${ds[5]}"
  "$si:${ds[5]}"
  "$si:${e[5]}"
  "$si:${ds[5]}"
  "$si:${b[4]}"
  "$dei:${gs[4]},${ds[4]}"
  "$dei:${c[5]},${ds[4]}"
  "$ei:${gs[5]},${c[5]}"

  "$dqu:${e[5]},${cs[5]}"
  "$ei:${e[5]},${cs[5]}"
  "$dqu:${cs[5]},${a[4]}"
  "$si:${b[4]}"
  "$si:${a[4]}"
  "$dei:${fs[4]},${ds[4]}"
  "$dei:${fs[4]},${ds[4]}"
  "$ei:${fs[4]},${ds[4]}"
  "$si:${gs[4]}"
  "$si:${a[4]}"
  "$si:${gs[4]}"
  "$si:${a[4]}"
 )
}
verse1; notes+=( "$qu:${gs[4]},${ds[4]}" );
verse1; notes+=( "$dei:${gs[4]},${ds[4]}" );

# verse 2
function verse2-common {
 notes+=(
  "$si:${cs[4]}"
  "$si:${ds[4]}"
  "$si:${e[4]}"
  "$si:${fs[4]}"
  "$ei:${e[4]}"
  "$si:${fs[4]}"
  "$si:${gs[4]}"
  "$si:${gs[4]}"
  "$si:${cs[5]}"
  "$si:${ds[5]}"
  "$si:${e[5]}"
  "$ei:${fs[5]},${ds[5]}"
  "$si:${gs[5]}"
 )
}
function verse2-part1 {
 verse2-common;
 notes+=(
  "$si:${fs[5]}"

  "$si:${cs[5]},${gs[5]}"
  "$si:${cs[5]},${gs[5]}"
  "$si:${gs[5]},${e[5]}"
  "$si:${gs[5]},${e[5]}"
  "$si:${cs[5]},${gs[5]}"
  "$si:${cs[5]},${gs[5]}"
  "$si:${gs[5]},${e[5]}"
  "$si:${gs[5]},${e[5]}"
  "$dqu:${cs[5]},${gs[4]}"
  "$si:${gs[4]}"
 )
}
notes+=( "$si:${e[4]}" ); verse2-part1
function verse2-part2 {
 notes+=( "$si:${e[4]}" ); verse2-common;
 notes+=(
  "$si:${b[5]}"
  "$si:${cs[6]}"
  "$si:${gs[5]}"
  "$si:${fs[5]}"
  "$si:${e[5]}"
  "$si:${cs[5]}"
  "$si:${gs[4]}"
  "$si:${fs[4]}"
  "$si:${e[4]}"
  "$ha:${cs[4]}"
 )
}
verse2-part2
verse2-part1
verse2-part2

# verse 3 which is basically lower pitched verse 1
function verse3 {
 notes+=(
  "$ei:${as[4]},${cs[4]}"
  "$si:${f[4]}"
  "$si:${as[4]}"
  "$si:${c[5]}"
  "$si:${cs[5]}"
  "$ei:${ds[5]},${f[4]}"
  "$dqu:${as[4]},${fs[4]}"
  "$ei:${as[4]},${fs[4]}"
  "$ei:${c[5]},${gs[4]}"
  "$si:${as[4]}"
  "$si:${c[5]}"
  "$si:${c[5]}"
  "$si:${cs[5]}"
  "$si:${c[5]}"
  "$si:${gs[4]}"
  "$dei:${f[4]},${c[4]}"
  "$dei:${a[4]},${c[4]}"
  "$ei:${f[5]},${a[4]}"

  "$dqu:${cs[5]},${as[4]}"
  "$ei:${cs[5]},${as[4]}"
  "$dqu:${as[4]},${fs[4]}"
  "$si:${gs[4]}"
  "$si:${fs[4]}"
  "$dei:${ds[4]},${c[4]}"
  "$dei:${ds[4]},${c[4]}"
  "$ei:${ds[4]},${c[4]}"
  "$si:${f[4]}"
  "$si:${fs[4]}"
  "$si:${f[4]}"
  "$si:${fs[4]}"
 )
}
verse3; notes+=( "$qu:${f[4]},${c[4]}" );
verse3; notes+=( "$ei:${f[4]},${c[4]}" "$si:${f[4]}" );

# verse 4 which is basically lower pitched verse 2
function verse4-common {
 notes+=(
  "$si:${as[3]}"
  "$si:${c[4]}"
  "$si:${cs[4]}"
  "$si:${ds[4]}"
  "$ei:${f[4]},${cs[4]}"
  "$si:${ds[4]}"
  "$si:${f[4]}"
  "$si:${f[4]}"
  "$si:${as[4]}"
  "$si:${c[5]}"
  "$si:${cs[5]}"
  "$ei:${ds[5]},${c[5]}"
 )
}
function verse4-part1 {
 verse4-common;
 notes+=(
  "$si:${cs[5]}"
  "$si:${ds[5]}"

  "$si:${as[4]},${f[4]}"
  "$si:${as[4]},${f[4]}"
  "$si:${f[5]},${cs[5]}"
  "$si:${f[5]},${cs[5]}"
  "$si:${as[4]},${f[4]}"
  "$si:${as[4]},${f[4]}"
  "$si:${f[5]},${cs[5]}"
  "$si:${f[5]},${cs[5]}"
  "$dqu:${as[4]},${f[4]}"
  "$si:${f[4]}"
 )
}
notes+=( "$si:${cs[4]}" ); verse4-part1
function verse4-part2 {
 notes+=( "$si:${cs[4]}" ); verse4-common;
 notes+=(
  "$si:${f[5]}"
  "$si:${gs[5]}"
  "$si:${as[5]}"
  "$si:${f[5]}"
  "$si:${ds[5]}"
  "$si:${cs[5]}"
  "$si:${as[4]}"
  "$si:${f[4]}"
  "$si:${ds[4]}"
  "$si:${cs[4]}"
  "$ha:${as[3]}"
 )
}
verse4-part2
verse4-part1
verse4-part2

createSoxPipes
