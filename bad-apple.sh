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
 __   ../..  __     ..\..   __   __        ___ 
|__) (    ( |  \    )    ) |__) |__) |    |__  
|__)  \_._/ |__/    \_._/  |    |    |___ |___ 

Bad Apple!!
Composed by ZUN for Touhou Gensoukyou: Lotus Land Story
Arranged by Job Bautista
Apple ASCII art by Rudá Moura

'

setTempo 160

# intro
for i in {1..8}
do
 notes+=( "$qu:25" )
done
function intro-common {
 notes+=(
  "$ei:${ds[3]}"
  "$ei:${as[3]}"
  "$ei:${gs[3]}"
  "$ei:${as[3]}"
  "$ei:${fs[3]}"
  "$ei:${as[3]}"
  "$ei:${f[3]}"
  "$ei:${as[3]}"
 )
}
intro-common; intro-common;
notes+=( "$ei:${ds[3]}" )
for i in {1..7}
do
 notes+=( "$ei:${ds[4]}" "$ei:0" )
done
notes+=( "$ei:${ds[4]}" )

# fast bridge
function fastbridge {
 function adff {
  notes+=(
   "$si:${as[4]}"
   "$si:${ds[4]}"
   "$si:${f[4]}"
   "$si:${fs[4]}"
  )
 }
 adff; adff; adff;
 notes+=(
  "$si:${cs[5]}"
  "$si:${ds[5]}"
 
  "$si:${as[4]}"
  "$si:${ds[4]}"
 )
 adff; adff;
 notes+=(
  "$si:${as[4]}"
  "$si:${ds[4]}"

  "$si:${cs[5]}"
  "$si:${ds[5]}"

  "$si:${as[4]}"
  "$si:${gs[4]}"
  "$si:${fs[4]}"
  "$si:${f[4]}"

  "$si:${b[3]}"
  "$si:${b[3]}"

  "$si:${fs[4]}"

  "$si:${b[3]}"
  "$si:${b[3]}"

  "$si:${cs[4]}"
  "$si:${ds[4]}"
  "$si:${fs[4]}"

  "$si:${b[3]}"
  "$si:${b[3]}"

  "$si:${fs[4]}"

  "$si:${b[3]}"
  "$si:${b[3]}"

  "$si:${cs[4]}"
  "$si:${ds[4]}"
  "$si:${fs[4]}"
  "$si:${d[4]}"
  "$si:${ds[4]}"
  "$si:${f[4]}"
 )
 function addf {
  notes+=(
   "$si:${as[3]}"
   "$si:${d[4]}"
   "$si:${ds[4]}"
   "$si:${f[4]}"
  )
 }
 addf; addf;
 notes+=(
  "$si:${as[3]}"
  "$si:${as[3]}"
  "$si:${gs[3]}"
  "$si:${fs[3]}"
  "$si:${f[3]}"
 )
}
fastbridge; fastbridge;

# verse 1
function verse1-common {
 notes+=(
  "$ei:${ds[4]}"
  "$ei:${f[4]}"
  "$ei:${fs[4]}"
  "$ei:${gs[4]}"
  "$qu:${as[4]}"
 )
}
verse1-common
notes+=(
 "$ei:${ds[4]}"
 "$ei:${cs[5]}"
 "$qu:${as[4]}"
 "$qu:${ds[4]}"
 "$ei:${as[4]}"
 "$ei:${gs[4]}"
 "$ei:${fs[4]}"
 "$ei:${f[4]}"
)
verse1-common
notes+=(
 "$ei:${gs[4]}"
 "$ei:${fs[4]}"
 "$ei:${f[4]}"
 "$ei:${as[3]}"
 "$ei:${f[4]}"
 "$ei:${fs[4]}"
 "$ei:${f[4]}"
 "$ei:${ds[4]}"
 "$ei:${d[4]}"
 "$ei:${f[4]}"
)
verse1-common
notes+=(
 "$ei:${gs[4]}"
 "$ei:${cs[5]}"
 "$qu:${ds[5]}"
 "$qu:${ds[5]}"
 "$qu:${f[5]}"
 "$qu:${fs[5]}"
 "$ei:${ds[5]}"
 "$ei:${f[5]}"
 "$ei:${fs[5]}"
 "$ei:${gs[5]}"
 "$qu:${as[5]}"
 "$ei:${gs[5]}"
 "$ei:${fs[5]}"
 "$qu:${gs[5]}"
 "$qu:${f[5]}"
 "$qu:${fs[5]}"
 "$qu:${gs[5]}"
)

# verse 2
function verse2-common {
 notes+=(
  "$ha:${ds[4]}"
  "$ei:${ds[4]}"
  "$ei:${f[4]}"
  "$qu:${fs[4]}"
  "$dqu:${f[4]}"
 )
}
verse2-common
notes+=(
 "$dqu:${as[3]}"
 "$qu:${f[4]}"
 "$qu:${f[4]}"
 "$ei:${fs[4]}"
 "$dqu:${ds[4]}"
 "$qu:${cs[4]}"
 "$qu:${cs[4]}"
 "$ei:${ds[4]}"
 "$dqu:${as[3]}"
 "$qu:${ds[4]}"
)
verse2-common
notes+=(
 "$dqu:${fs[4]}"
 "$qu:${gs[4]}"
 "$dqu:${ds[4]}"
 "$ei:${as[4]}"
 "$fu:${as[4]}"
 "$ei:${gs[4]}"
 "$ei:${as[4]}"
 "$qu:${cs[5]}"
)

# verse 3, which is basically a higher pitched verse 2
function verse3-common {
 notes+=(
  "$ha:${ds[5]}"
  "$ei:${ds[5]}"
  "$ei:${f[5]}"
 )
}
verse3-common
notes+=(
 "$qu:${fs[5]}"
 "$dqu:${f[5]}"
 "$dqu:${as[4]}"
 "$qu:${f[5]}"
 "$qu:${f[5]}"
 "$ei:${fs[5]}"
 "$dqu:${ds[5]}"
 "$qu:${cs[5]}"
 "$qu:${cs[5]}"
 "$ei:${ds[5]}"
 "$dqu:${as[4]}"
 "$qu:${f[5]}"
)
verse3-common
notes+=(
 "$ei:${fs[5]}"
 "$ei:${gs[5]}"
 "$dqu:${f[5]}"
 "$dqu:${fs[5]}"
 "$qu:${gs[5]}"
 "$dqu:${d[5]}"
 "$dqu:${as[4]}"
 "$qu:${as[5]}"
 "$qu:${gs[5]}"
 "$qu:${fs[5]}"
 "$qu:${f[5]}"
 "$qu:${fs[5]}"
)

# verse 4
function verse4-common {
 notes+=(
  "$ei:${g[4]}"
  "$qu:${d[4]}"
  "$qu:${g[4]}"
  "$ei:${as[3]}"
  "$ei:${d[4]}"
  "$ei:${f[4]}"
  "$ei:${g[4]}"
  "$ei:${d[4]}"
  "$ei:${as[3]}"
  "$qu:${g[4]}"
  "$ei:${g[4]}"
  "$ei:${a[4]}"
  "$ei:${as[4]}"
  "$ei:${g[4]}"
  "$qu:${d[4]}"
  "$qu:${g[4]}"
  "$ei:${d[4]}"
  "$ei:${g[4]}"
  "$ei:${c[5]}"
  "$ha:${as[4]}"
 )
}
verse4-common
notes+=(
 "$ei:${a[4]}"
 "$ei:${g[4]}"
 "$ei:${d[4]}"
 "$ei:${as[3]}"
)
verse4-common
notes+=(
 "$qu:${a[4]}"
 "$qu:${as[4]}"
)

# verse 5, which is basically a higher pitched verse 4
function verse5-common {
 notes+=(
  "$ei:${g[5]}"
  "$qu:${d[5]}"
  "$qu:${g[5]}"
  "$ei:${as[4]}"
  "$ei:${d[5]}"
  "$ei:${f[5]}"
  "$ei:${g[5]}"
  "$ei:${d[5]}"
  "$ei:${as[4]}"
  "$qu:${g[5]}"
  "$ei:${g[5]}"
  "$ei:${a[5]}"
  "$ei:${as[5]}"
  "$ei:${g[5]}"
  "$qu:${d[5]}"
  "$qu:${g[5]}"
 )
}
verse5-common
notes+=(
 "$ei:${d[5]}"
 "$ei:${g[5]}"
 "$ei:${c[6]}"
 "$ha:${as[5]}"

 "$ei:${a[5]}"
 "$ei:${g[5]}"
 "$ei:${d[5]}"
 "$ei:${as[4]}"
)
verse5-common
notes+=(
 "$ei:${d[5]}"
 "$ei:${g[5]}"
 "$ei:${a[5]}"
 "$fu:${as[5]}-902"
)

execute # loop yes $1
