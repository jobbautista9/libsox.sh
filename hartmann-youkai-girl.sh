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
           __  ___                      .  __          __
|__|  /\  |__)  |   |\/|  /\  |\ | |\ | , /__`    \ / /  \ |  | |__/  /\  |
|  | /~~\ |  \  |   |  | /~~\ | \| | \|   .__/     |  \__/ \__/ |  \ /~~\ |

                               __     __
                              / _` | |__) |
                              \__> | |  \ |___

Hartmann’s Youkai Girl
Composed by ZUN for Touhou Chireiden: Subterranean Animism
Arranged by Job Bautista

'

setTempo 163

function eee {
 declare -n note1=$1 # If I use "${$1[3]}" instead of this, bash complains
 declare -n note2=$2 # about a "bad substitution" error
 declare -n note3=$3
 notes+=(
  "$ei:${note1[$4]}"
  "$ei:${note2[$4]}"
  "$ei:${note3[$5]}" 
 )
}
function sesess {
 declare -n note1=$1
 declare -n note2=$2
 notes+=(
  "$si:${note1[$3]}"
  "$ei:0"
  "$si:${note2[$4]}"
  "$ei:0"
  "$si:${note1[$3]}"
  "$si:0"
 )
}
function dsee {
 declare -n note1=$1
 declare -n note2=$2
 notes+=(
  "$dei:${note1[$3]}"
  "$si:${note2[$4]}"
  "$ei:0"
  "$ei:${note1[$3]}"
 )
}
function dde {
 declare -n note1=$1
 declare -n note2=$2
 notes+=(
  "$dei:${note1[$3]}"
  "$dei:${note2[$3]}"
  "$ei:${note1[$3]}"
 )
}

# verse 1
function verse1-common {
 eee b g e 3 3
 $1 d c 4 4
 eee b g e 3 3
 eee as fs ds 3 3; notes+=( "$ei:${as[3]}" );
 eee b g e 3 3
 $1 d c 4 4
 eee b g e 3 3
 eee as ds as 3 2; notes+=( "$ei:${fs[3]}" );
 eee g e c 3 3
 $2 b a 3 3
 eee g e b 3 2
 eee fs ds b 3 2; notes+=( "$ei:${fs[3]}" );
 eee g e c 3 3
}
verse1-common sesess sesess
notes+=(
 "$si:${b[3]}"
 "$ei:0"
 "$si:${a[3]}"
 "$ei:0"
 "$ei:${b[3]}"
)
eee g e b 3 2
notes+=(
 "$qu:${fs[3]}"
 "$ei:${b[3]}"
 "$ei:${ds[4]}"
)
verse1-common dsee dde
dde b a 3
eee g e b 3 2
notes+=(
 "$qu:${fs[3]}"
 "$ei:${b[3]}"
 "$ei:${ds[3]}"
)

# verse 2
function eeq {
 declare -n note1=$1
 declare -n note2=$2
 notes+=(
  "$ei:${note1[$3]}"
  "$ei:${note2[$4]}"
  "$qu:${note1[$5]}"
 )
}
function verse2-common {
 eeq e b 3 3 4
 eeq f b 3 3 4
 eeq e b 3 3 4
 eeq f b 3 3 4
 eeq fs cs 3 3 4
 eeq g cs 3 3 4
}
verse2-common
eeq fs cs 3 3 4
eeq g cs 3 3 4
verse2-common
eeq gs cs 3 3 4
eeq a d 3 3 4

# verse 3
function verse3-common {
 eee as fs ds 3 3
 $1 cs b 4 3
 eee as fs ds 3 3
 eee a f d 3 3; notes+=( "$ei:${a[3]}" );
 eee as fs ds 3 3
 $1 cs b 4 3
 eee as fs ds 3 3
 eee a d a 3 2; notes+=( "$ei:${f[3]}" );
 eee fs ds b 3 2
 $2 as gs 3 3
 eee fs ds as 3 2
 eee f d as 3 2; notes+=( "$ei:${f[3]}" );
 eee fs ds b 3 2
}
verse3-common sesess sesess
notes+=(
 "$si:${as[3]}"
 "$ei:0"
 "$si:${gs[3]}"
 "$ei:0"
 "$ei:${as[3]}"
)
eee fs ds as 3 2
notes+=(
 "$qu:${f[3]}"
 "$ei:${as[3]}"
 "$ei:${d[4]}"
)
verse3-common dsee dde
dde as gs 3
eee fs ds as 3 2
notes+=(
 "$qu:${f[3]}"
 "$ei:${a[3]}"
 "$ei:${d[4]}"
)

# verse 4
eee as fs ds 4 4
dsee cs b 5 4
eee as fs ds 4 4
eee a f d 4 4; notes+=( "$ei:${a[4]}" );
eee as fs ds 4 4
dsee cs b 5 4
eee as fs ds 4 4
eee a d a 4 3; notes+=( "$ei:${f[4]}" );
eee fs ds b 4 3
dde as gs 4
eee fs ds as 4 3
eee f d as 4 3; notes+=( "$ei:${f[4]}" );
eee fs ds b 4 3
dde as gs 4
eee fs ds as 4 3
notes+=(
 "$qu:${f[4]}"
 "$ei:${as[4]}"
 "$ei:${d[5]}"
)

# verse 5
function verse5-common {
 eeq ds as 3 3 4
 eeq e as 3 3 4
 eeq ds as 3 3 4
 eeq e as 3 3 4
 eeq f c 3 4 4
 eeq fs c 3 4 4
}
verse5-common
eeq f c 3 4 4
eeq fs c 3 4 4
verse5-common
eeq g c 3 4 4
eeq gs c 3 4 4

# verse 6
function verse6-common {
 notes+=(
  "$ei:${a[4]}"
  "$ei:${g[4]}"
  "$ei:${a[4]}"
  "$ei:${e[4]}"
  "$ei:${c[4]}"
  "$ei:${b[3]}"
  "$ei:${c[4]}"
  "$si:${a[3]}"
  "$si:${b[3]}"
  "$qu:${c[4]}"
  "$qu:${c[5]}"
  "$qu:${b[4]}"
  "$qu:${g[4]}"
  "$ei:${a[4]}"
  "$ei:${b[4]}"
  "$ei:${c[5]}"
  "$ei:${e[5]}"
  "$ei:${c[5]}"
  "$ei:${b[4]}"
  "$ei:${g[4]}"
  "$ei:${b[3]}"
  "$qu:${c[4]}"
  "$qu:${g[4]}"
  "$dqu:${a[4]}"

  "$si:${e[4]}"
  "$si:${g[4]}"
  "$ei:${a[4]}"
  "$ei:${g[4]}"
  "$ei:${a[4]}"
  "$ei:${b[4]}"
  "$ei:${c[5]}"
  "$ei:${b[4]}"
  "$ei:${d[5]}"
  "$ei:${b[4]}"
  "$ei:${c[5]}"
  "$ei:${b[4]}"
  "$ei:${a[4]}"
  "$ei:${g[4]}"
  "$qu:${c[4]}"
  "$qu:${b[3]}"
  "$ei:${a[3]}"
  "$ei:${b[3]}"
  "$ei:${c[4]}"
  "$ei:${e[4]}"
  "$ei:${c[4]}"
  "$ei:${e[4]}"
 )
}
verse6-common
notes+=(
 "$ei:${c[4]}"
 "$ei:${b[3]}"
 "$ei:${a[3]}"
 "$ei:${g[3]}"
 "$ei:${e[3]}"
 "$ei:${g[3]}"
 "$qu:${a[3]}"
 "$qu:${g[3]}"
)
verse6-common
notes+=(
 "$ei:${b[4]}"
 "$ei:${c[5]}"
 "$ei:${a[4]}"
 "$ei:${g[4]}"
 "$ei:${e[4]}"
 "$ei:${g[4]}"
 "$qu:${a[4]}"
 "$si:${a[4]}"
 "$si:${e[4]}"
 "$si:${c[4]}"
 "$si:${a[3]}"
)

# verse 7, which is basically higher-pitched verse 7
function verse7-common {
 notes+=(
  "$ei:${as[4]}"
  "$ei:${gs[4]}"
  "$ei:${as[4]}"
  "$ei:${f[4]}"
  "$ei:${cs[4]}"
  "$ei:${c[4]}"
  "$ei:${cs[4]}"
  "$si:${as[3]}"
  "$si:${c[4]}"
  "$qu:${cs[4]}"
  "$qu:${cs[5]}"
  "$qu:${c[5]}"
  "$qu:${gs[4]}"
  "$ei:${as[4]}"
  "$ei:${c[5]}"
  "$ei:${cs[5]}"
  "$ei:${f[5]}"
  "$ei:${cs[5]}"
  "$ei:${c[5]}"
  "$ei:${gs[4]}"
  "$ei:${c[4]}"
  "$qu:${cs[4]}"
  "$qu:${gs[4]}"
  "$dqu:${as[4]}"

  "$si:${f[4]}"
  "$si:${gs[4]}"
  "$ei:${as[4]}"
  "$ei:${gs[4]}"
  "$ei:${as[4]}"
  "$ei:${c[5]}"
  "$ei:${cs[5]}"
  "$ei:${c[5]}"
  "$ei:${ds[5]}"
  "$ei:${c[5]}"
  "$ei:${cs[5]}"
  "$ei:${c[5]}"
  "$ei:${as[4]}"
  "$ei:${gs[4]}"
  "$qu:${cs[4]}"
  "$qu:${c[4]}"
  "$ei:${as[3]}"
  "$ei:${c[4]}"
  "$ei:${cs[4]}"
  "$ei:${f[4]}"
  "$ei:${cs[4]}"
  "$ei:${f[4]}"
 )
}
verse7-common
notes+=(
 "$ei:${cs[4]}"
 "$ei:${c[4]}"
 "$ei:${as[3]}"
 "$ei:${gs[3]}"
 "$ei:${f[3]}"
 "$ei:${gs[3]}"
 "$qu:${as[3]}"
 "$qu:${c[4]}"
)
verse7-common
notes+=(
 "$ei:${c[5]}"
 "$ei:${cs[5]}"
 "$ei:${as[4]}"
 "$ei:${gs[4]}"
 "$ei:${f[4]}"
 "$ei:${gs[4]}"
 "$ha:${as[4]}"
)

createSoxPipes
