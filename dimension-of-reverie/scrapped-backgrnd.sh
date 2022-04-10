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

Dimension of Reverie
Composed by ZUN for Touhou Kaikidan: Mystic Square
Arranged by Job Bautista

'

setTempo 627

# intro
function gaasd {
 notes+=(
  "$qu:${g[3]}"
  "$qu:${a[3]}"
  "$qu:${as[3]}"
  "$qu:${d[4]}"
 )
}
for i in {1..16}
do
 gaasd
done
notes+=( "$qu:${g[3]}" "$qu:${a[3]}" )
function fu-d3_4 {
 for i in {1..4}
 do
  notes+=( "$fu:${d[3]}" )
 done
}
function backgrnd1 {
 fu-d3_4
 notes+=(
  "$fu:${ds[3]}"
  "$fu:${ds[3]}"
  "$fu:${f[3]}"
  "$fu:${f[3]}"
 )
}
backgrnd1; backgrnd1; backgrnd1;
fu-d3_4
notes+=(
 "$fu:${ds[3]}"
 "$fu:${ds[3]}"
 "$fu:${fs[3]}"
 "$fu:${fs[3]}"
)
function fu-d4_4 {
 for i in {1..4}
 do
  notes+=( "$fu:${d[4]}" )
 done
}
function backgrnd2 {
 fu-d4_4
 notes+=(
  "$fu:${ds[4]}"
  "$fu:${ds[4]}"
  "$fu:${f[4]}"
  "$fu:${f[4]}"
 )
}
backgrnd2; backgrnd2; backgrnd2;
fu-d4_4
notes+=(
 "$fu:${ds[4]}"
 "$fu:${ds[4]}"
 "$fu:${fs[4]}"
 "$dha:${fs[4]}"
)
function backgrnd3 {
 notes+=(
  "$ha:${g[2]}"
  "$ha:${a[2]}"
  "$ha:${as[2]}"
  "$ha:${d[3]}"
  "$ha:${g[3]}"
  "$ha:${a[3]}"
  "$ha:${as[3]}"
  "$ha:${d[4]}"

  "$ha:${g[4]}"
  "$ha:${a[4]}"
  "$ha:${as[4]}"
  "$ha:${d[5]}"
  "$ha:${a[4]}"
  "$ha:${g[4]}"
  "$ha:${f[4]}"
  "$ha:${a[3]}"

  "$ha:${g[3]}"
  "$ha:${a[3]}"
  "$ha:${as[3]}"
  "$ha:${d[4]}"
  "$ha:${g[4]}"
  "$ha:${a[4]}"
  "$ha:${as[4]}"
  "$ha:${d[5]}"

  "$ha:${as[4]}"
  "$ha:${g[4]}"
  "$ha:${d[4]}"
  "$ha:${c[4]}"
  "$ha:${d[4]}"
  "$ha:${as[3]}"
  "$ha:${a[3]}"
  "$ha:${f[3]}"

  "$ha:${as[2]}"
  "$ha:${c[3]}"
  "$ha:${d[3]}"
  "$ha:${g[3]}"
  "$ha:${as[2]}"
  "$ha:${c[3]}"
  "$ha:${d[3]}"
  "$ha:${g[3]}"

  "$ha:${as[3]}"
  "$ha:${c[4]}"
  "$ha:${d[4]}"
  "$ha:${g[4]}"
  "$ha:${as[3]}"
  "$ha:${c[4]}"
  "$ha:${d[4]}"
  "$ha:${g[4]}"

  "$ha:${as[3]}"
  "$ha:${c[4]}"
  "$ha:${d[4]}"
  "$ha:${g[4]}"
  "$ha:${d[4]}"
  "$ha:${c[4]}"
  "$ha:${as[3]}"
  "$ha:${a[3]}"

  "$ha:${as[3]}"
  "$ha:${c[4]}"
  "$ha:${d[4]}"
  "$ha:${g[3]}"
  "$ha:${as[3]}"
  "$ha:${a[3]}"
  "$ha:${g[3]}"
  "$ha:${d[3]}"
 )
}
backgrnd3; backgrnd3;
notes+=(
 "1.528:${ds[3]}" # 4 whole notes
 "1.528:${f[3]}"
 "2.674:${g[3]}" # 7 whole notes
 "$fu:${f[3]}"

 "1.528:${ds[3]}"
 "1.528:${f[3]}"
 "3.056:${g[3]}" # 8 whole notes
)
function end-common {
 notes+=(
  "$qu:${g[3]}"
  "$qu:${c[4]}"
  "$qu:${d[4]}"
  "$qu:${g[3]}"
  "$qu:${as[3]}"
  "$qu:${a[3]}"
  "$qu:${g[3]}"
  "$qu:${f[3]}"
  "$qu:${g[3]}"
  "$qu:${a[3]}"
  "$qu:${as[3]}"
  "$qu:${d[4]}"
 )
}
for i in {1..7}
do
 end-common
 notes+=(
  "$qu:${g[4]}"
  "$qu:${d[4]}"
  "$qu:${as[3]}"
  "$qu:${a[3]}"
 )
done
end-common
notes+=( "$fu:${g[4]}" )
for i in {1..16}
do
 gaasd
done

createSoxPipes
