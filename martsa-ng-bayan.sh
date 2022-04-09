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

declare textintro='
           __  ___  __                __      __
|\/|  /\  |__)  |  /__`  /\     |\ | / _`    |__)  /\  \ /  /\  |\ |
|  | /~~\ |  \  |  .__/ /~~\    | \| \__>    |__) /~~\  |  /~~\ | \|

Martsa ng Bayan
Sinulat ni Jesus Manuel Santiago
Inayos ni Job Bautista

'

source libsox.sh

setTempo 170
notes+=(
 "$qu:${a[3]}"
 "$ei:${a[3]}"
 "$qu:${a[3]}"
 "$ei:${a[3]}"
 "$qu:${a[3]}"
 "$ei:${a[3]}"
 "$qu:${a[3]}"
 "$ei:${a[3]}"
 "$qu:${a[3]}"
 "$ei:${a[3]}"
 "$qu:${a[3]}"
 "$ei:${a[3]}"
 "$qu:${a[3]}"
 "$ei:0"
)

setTempo 140

function all-common {
 notes+=(
  "$qu:${d[4]}"
  "$ei:${e[4]}"
  "$qu:${f[4]}"
  "$qu:${d[4]}"
  "$qu:${e[4]}"
  "$ei:${e[4]}"
  "$ei:${e[4]}"
  "$qu:${e[4]}"
  "$ha:${d[4]}"

  "$ei:${d[4]}"
  "$ei:${d[4]}"

  "$qu:${g[4]}"
  "$qu:${g[4]}"
  "$qu:${g[4]}"
  "$ei:${f[4]}"
  "$ei:${g[4]}"
  "$si:${g[4]}"
  "$dha:${a[4]}"

  "$ei:${a[4]}"
  "$ei:${a[4]}"

  "$ha:${cs[5]}"
  "$dqu:${a[4]}"
  "$ei:${g[4]}"
  "$qu:${g[4]}"
  "$ha:${f[4]}"

  "$ei:${e[4]}"
  "$ei:${e[4]}"

  "$qu:${f[4]}"
  "$qu:${f[4]}"
  "$qu:${f[4]}"
  "$ei:${e[4]}"
  "$ei:${f[4]}"
  "$dha:${a[4]}"

  "$ei:${a[3]}"
  "$ei:${a[3]}"

  "$qu:${d[4]}"
  "$qu:${d[4]}"
  "$qu:${e[4]}"
  "$ei:${f[4]}"
  "$ei:${e[4]}"
  "$qu:${e[4]}"
  "$ha:${d[4]}"

  "$ei:${d[4]}"
  "$ei:${d[4]}"

  "$qu:${g[4]}"
  "$qu:${g[4]}"
  "$qu:${g[4]}"
  "$ei:${f[4]}"
  "$ei:${g[4]}"
  "$dha:${a[4]}"

  "$ei:${a[4]}"
  "$ei:${a[4]}"

  "$ha:${cs[5]}"
  "$qu:${a[4]}"
  "$ei:${a[4]}"
  "$ei:${a[4]}"
  "$dha:${d[5]}"

  "$ei:${d[4]}"
  "$ei:${d[4]}"

  "$qu:${as[4]}"
  "$qu:${as[4]}"
  "$qu:${as[4]}"
  "$ei:${a[4]}"
  "$ei:${g[4]}"
  "$dha:${cs[5]}"
 )
}
all-common
function end-common {
 notes+=(
  "$ei:${a[4]}"
  "$ei:${a[4]}"

  "$ha:${d[5]}"
  "$qu:${c[5]}"
  "$ei:${d[5]}"
  "$ei:${c[5]}"
  "$ha:${a[4]}"

  "$qu:${g[4]}"
  "$ei:${a[4]}"
  "$ei:${as[4]}"
  "$qu:${a[4]}"
  "$qu:${f[4]}"
 )
}
end-common
function end-part1 {
 notes+=(
  "$qu:${e[4]}"
  "$ei:${f[4]}"
  "$ei:${e[4]}"
  "$qu:${e[4]}"
  "$ha:${d[4]}"
 )
}
end-part1
all-common
end-common
end-part1

setTempo 120
end-common
notes+=(
 "$qu:${cs[5]}"
 "$ei:${cs[5]}"
 "$ei:${cs[5]}"
 "$qu:${cs[5]}"
 "$dha:${d[5]}"
)

createSoxPipes
