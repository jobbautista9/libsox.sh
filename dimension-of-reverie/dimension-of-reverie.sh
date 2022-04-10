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

declare textintro='
 __           ___       __     __
|  \ |  |\/| |__  |\ | /__` | /  \ |\ |
|__/ |  |  | |___ | \| .__/ | \__/ | \|

                __   ___
               /  \ |__
               \__/ |

     __   ___       ___  __     ___
    |__) |__  \  / |__  |__) | |__
    |  \ |___  \/  |___ |  \ | |___

Dimension of Reverie
Composed by ZUN for Touhou Kaikidan: Mystic Square
Arranged by Job Bautista

'

setTempo 627

# background
notes+=(
 "2.674:${g[3]}" # 14 half notes

 "$qu:${c[3]}"
 "$qu:${as[2]}"
 "$qu:${a[2]}"
 "$qu:${g[2]}"
)

createSoxPipes

notes=()

# loop start
function ggdd {
 notes+=(
  "$ei:${g[2]}"
  "$ei:0"
  "$ei:${g[2]}"
  "$ei:0"
  "$ei:${d[3]}"
  "$ei:0"
  "$ei:${d[3]}"
  "$ei:0"
 )
}
for i in {1..8}
do
 ggdd
done

# foreground, intro
function intro-common {
 notes+=(
  "$fu:${g[4]}"
  "$fu:${d[4]}"
  "$dha:${as[4]}"
  "$dha:${a[4]}"
  "$ha:${g[4]}"

  "$dha:${ds[4]}"
  "$dha:${f[4]}"
  "$ha:${g[4]}"
  "$dha:${f[4]}"
  "$dha:${a[4]}"
  "$ha:${c[5]}"

  "$fu:${as[4]}"
  "$fu:${g[4]}"
  "$dha:${d[5]}"
  "$dha:${c[5]}"
  "$ha:${as[4]}"

  "$dha:${g[4]}"
  "$dha:${a[4]}"
  "$ha:${as[4]}"
  ".764:${a[4]}" # 2 whole notes

  "$fu:${as[4]}"
  "$fu:${g[4]}"
  "$dha:${d[5]}"
  "$dha:${c[5]}"
  "$ha:${as[4]}"

  "$dha:${g[4]}"
  "$dha:${a[4]}"
  "$ha:${as[4]}"
  "$dha:${a[4]}"
  "$dha:${c[5]}"
  "$ha:${f[5]}"

  "$fu:${g[5]}"
  "$fu:${d[5]}"
  "$dha:${as[5]}"
  "$dha:${a[5]}"
  "$ha:${g[5]}"

  "$dha:${ds[5]}"
  "$dha:${f[5]}"
  "$ha:${g[5]}"
 )
}
intro-common
notes+=(
 "$ha:${a[5]}"
 "$ha:${fs[5]}"
 "$ha:${d[5]}"
 "$ha:${c[5]}"
)
intro-common
notes+=( ".764:${a[5]}" )

# verse 1
notes+=(
 ".764:${as[5]}"
 ".764:${g[5]}"
 "$fu:${d[6]}"
 "$fu:${c[6]}"
 "$fu:${as[5]}"
 "$fu:${a[5]}"

 ".764:${as[5]}"
 ".764:${g[5]}"
 "$dha:${a[5]}"
 "$dha:${f[5]}"
 "$ha:${c[5]}"
 "$dha:${c[5]}"
 "$dha:${as[4]}"
 "$ha:${c[5]}"

 ".764:${d[5]}"
 ".764:${g[4]}"
 "$fu:${as[4]}"
 "$fu:${a[4]}"
 "$fu:${g[4]}"
 "$fu:${f[4]}"

 "2.292:${g[4]}" # 6 whole notes
)

# bridge to verse 2
notes+=(
 "$dha:${a[4]}"
 "$dha:${as[4]}"
 "$ha:${c[5]}"
)

# verse 2
notes+=(
 ".764:${d[5]}"
 ".764:${g[4]}"
 "$fu:${as[4]}"
 "$fu:${a[4]}"
 "$fu:${g[4]}"
 "$fu:${f[4]}"

 ".764:${ds[4]}"
 ".764:${as[3]}"
 ".764:${f[4]}"
 "$dha:${a[4]}"
 "$dha:${as[4]}"
 "$ha:${c[5]}"

 ".764:${as[4]}"
 "$fu:${g[4]}"
 "$fu:${d[5]}"
 "$dha:${a[4]}"
 "$dha:${as[4]}"
 "$ha:${c[5]}"
 "$dha:${c[5]}"
 "$dha:${as[4]}"
 "$ha:${c[5]}"

 "1.528:${g[4]}" # 8 half notes

 "$si:${a[4]}"
 "$si:${as[4]}"
 "$si:${b[4]}"
 "$si:${c[5]}"
 "$si:${cs[5]}"
 "$si:${d[5]}"
 "$si:${ds[5]}"
 "$si:${e[5]}"
 "1.146:${g[5]}" # 3 whole notes
)

# verse 3
notes+=(
 "$fu:${d[5]}"

 ".764:${g[5]}"
 "$fu:${a[5]}"
 "$ha:${as[5]}"
 "$ha:${c[6]}"

 ".764:${as[5]}"
 "$fu:${a[5]}"
 "$fu:${f[5]}"
 "$si:${d[5]}"
 "$si:${f[5]}"
 "1.457:${d[5]}" # 31 eighth notes

 "1.146:${g[5]}"
)

# verse 4
notes+=(
 "$fu:${c[5]}"
 ".764:${d[5]}"
 "$fu:${g[5]}"
 "$ha:${a[5]}"
 "$ha:${as[5]}"

 ".764:${a[5]}"
 "$fu:${f[5]}"
 "$fu:${c[5]}"
 "$si:${d[5]}"
 "$si:${c[5]}"
 ".517:${d[5]}" # 11 eighth notes
 "2.101:${g[4]}" # 11 half notes
)

# verse 5
notes+=(
 "$fu:${d[5]}"
 ".764:${g[5]}"
 "$fu:${a[5]}"
 "$ha:${as[5]}"
 "$ha:${c[6]}"

 ".764:${as[5]}"
 "$fu:${a[5]}"
 "$fu:${f[5]}"
 "$si:${d[5]}"
 "$si:${f[5]}"
 "1.457:${d[5]}"

 "1.146:${g[5]}"
)

# verse 6
notes+=(
 "$fu:${c[5]}"
 ".764:${d[5]}"
 "$fu:${g[5]}"
 "$ha:${a[5]}"
 "$ha:${as[5]}"

 ".764:${a[5]}"
 "$fu:${f[5]}"
 "$fu:${c[5]}"
 "$si:${d[5]}"
 "$si:${c[5]}"
 ".517:${d[5]}"
 "1.528:${g[4]}" # 4 whole notes
)
for i in {1..8}
do
 ggdd
done

createSoxPipes
