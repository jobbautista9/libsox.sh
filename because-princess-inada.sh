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
              __   ___  __             __   ___
             |__) |__  /  `  /\  |  | /__` |__
             |__) |___ \__, /~~\ \__/ .__/ |___

 __   __          __   ___  __   __                  __
|__) |__) | |\ | /  ` |__  /__` /__`    | |\ |  /\  |  \  /\
|    |  \ | | \| \__, |___ .__/ .__/    | | \| /~~\ |__/ /~~\

    __      __   __   __        __          __           ___
 | /__`    /__` /  ` /  \ |    |  \ | |\ | / _`    |\/| |__
 | .__/    .__/ \__, \__/ |___ |__/ | | \| \__>    |  | |___

Because Princess Inada is Scolding Me
Composed by ZUN for Touhou Fuujinroku: Mountain of Faith
Arranged by Job Bautista

'

setTempo 160

# intro
function intro-essee {
 notes+=(
  "$ei:$1"
  "$si:$2"
  "$si:$1"
  "$ei:$2"
  "$ei:$1"
 )
}
function intro-common {
 intro-essee $1 $2; intro-essee $1 $2;
 notes+=( 
  "$ei:$3"
  "$ei:$4"
  "$ei:$5"
  "$ei:$6"
 )
}
intro-common ${c[4]} ${ds[3]} ${d[3]} ${as[3]} ${f[3]} ${d[4]}
intro-essee ${c[4]} ${ds[3]}
intro-common ${c[4]} ${ds[3]} ${d[3]} ${as[3]} ${f[3]} ${d[4]}
intro-essee ${ds[4]} ${g[3]}
intro-common ${ds[4]} ${g[3]} ${f[3]} ${cs[4]} ${gs[3]} ${f[4]}
intro-essee ${ds[4]} ${g[3]}
intro-common ${ds[4]} ${g[3]} ${f[3]} ${cs[4]} ${gs[3]} ${f[4]}
notes+=( "$ei:${as[4]}" )

# verse 1
function verse1-common {
 notes+=(
  "$ei:${e[3]}"
  "$ei:${fs[3]}"
  "$ei:${a[3]}"
  "$dqu:${b[3]}"
  "$ei:${cs[4]}"
  "$ei:${b[3]}"
  "$ei:${cs[4]}"
  "$ei:${e[4]}"
  "$ei:${cs[4]}"
  "$ei:${b[3]}"
  "$ei:${cs[4]}"
  "$qu:${fs[3]}"
  "$ei:0"

  "$ei:${e[3]}"
  "$ei:${fs[3]}"
  "$ei:${a[3]}"
  "$dqu:${b[3]}"
  "$ei:${cs[4]}"
  "$ei:${e[4]}"
  "$ei:${cs[4]}"
  "$ei:${b[3]}"
  "$ei:${cs[4]}"
  "$ha:${fs[4]}"
  "$ei:0"

  "$ei:${cs[4]}"
  "$ei:${fs[4]}"
  "$ei:${gs[4]}"
  "$dqu:${a[4]}"
  "$ei:${b[4]}"
  "$ei:${gs[4]}"
  "$ei:${a[4]}"
  "$ei:${gs[4]}"
  "$ei:${e[4]}"
  "$ei:${b[3]}"
  "$ei:${cs[4]}"
  "$qu:${fs[3]}"
  "$ei:0"

  "$ei:${cs[3]}"
  "$ei:${fs[3]}"
  "$ei:${gs[3]}"
  "$dqu:${a[3]}"
  "$ei:${cs[4]}"
  "$ei:${b[3]}"
  "$ei:${a[3]}"
  "$qu:${gs[3]}"
  
 )
}
verse1-common
notes+=( "$ha:${fs[3]}" "$ei:0" )
verse1-common; notes+=( "$qu:${fs[3]}" );

# verse 2
function verse2-common {
 notes+=(
  "$ei:${ds[4]}"
  "$ei:${gs[3]}"
  "$ei:${f[4]}"
  "$ei:${as[3]}"
  "$ei:${fs[4]}"
 )
}
verse2-common; notes+=( "$ei:${fs[3]}" );
verse2-common; notes+=( "$ei:${fs[3]}" );
verse2-common
notes+=(
 "$ei:${f[4]}"
 "$ei:${as[3]}"
 "$ei:${gs[3]}"
 "$ei:${as[3]}"
 "$ei:${fs[3]}"
 "$ei:${f[3]}"
 "$ei:${fs[3]}"
)
verse2-common; notes+=( "$ei:${fs[3]}" );
verse2-common; notes+=( "$ei:${fs[3]}" );
verse2-common
notes+=(
 "$si:${gs[2]}"
 "$si:${as[2]}"
 "$ei:${gs[2]}"
 "$si:${as[2]}"
 "$ei:${gs[2]}"
 "$si:${gs[2]}"
 "$si:${fs[2]}"
 "$si:${f[2]}"
 "$si:${gs[2]}"
 "$si:${as[2]}"
)

createSoxPipes
