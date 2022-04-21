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

setTempo 89

setDefaultSynthType pluck

# intro
notes+=(
 "$qu:${f[2]}"
 "$qu:${g[2]}"

 "$si:${c[3]},${g[5]}"
)
silence si
notes+=( "$si:${g[3]},${g[5]}" )
silence si
notes+=( "$si:${c[3]},${g[5]}" )
silence si
notes+=( "$ei:${g[2]}" )

# verse 1
for i in 1 2
do
 notes+=(
  "$si:${c[2]}"
  "$si:${e[3]},${c[3]}"
  "$si:${g[2]}"
  "$si:${e[3]},${c[3]}"
 )
done
for i in 1 2
do
 notes+=(
  "$si:${g[1]}"
  "$si:${d[3]},${b[2]}"
  "$si:${d[2]}"
  "$si:${d[3]},${b[2]}"
 )
done
notes+=(
 "$si:${f[1]}"
 "$si:${c[3]},${a[2]}"
 "$si:${a[1]}"
 "$si:${c[3]},${a[2]}"

 "$si:${g[1]}"
 "$si:${d[3]},${b[2]}"
 "$si:${d[2]}"
 "$si:${d[3]},${b[2]}"

 "$si:${c[2]}"
 "$si:${f[3]},${c[3]}"
 "$si:${g[2]}"
 "$si:${f[3]},${c[3]}"

 "$si:${c[2]}"
 "$si:${e[3]},${c[3]}"
 "$si:${g[2]}"
 "$si:${e[3]},${c[3]}"

 "$si:${a[1]}"
 "$si:${c[3]},${a[2]}"
 "$si:${c[2]}"
 "$si:${c[3]},${a[2]}"

 "$si:${f[1]}"
 "$si:${c[3]},${gs[2]}"

 "$si:${c[2]}"
 "$si:${d[3]},${b[2]}"
 "$si:${e[2]}"
 "$si:${d[3]},${b[2]}"
 "$si:${c[2]}"
 "$si:${d[3]},${b[2]}"

 "$si:${a[1]}"
 "$si:${e[3]},${cs[3]}"
 "$si:${e[2]}"
 "$si:${e[3]},${cs[3]}"

 "$si:${d[2]}"
 "$si:${c[3]},${a[2]}"
 "$si:${a[1]}"
 "$si:${c[3]},${a[2]}"

 "$si:${g[2]}"
 "$si:${d[3]},${b[2]}"
 "$si:${d[2]}"
 "$si:${d[3]},${b[2]}"

 "$si:${e[3]},${c[3]}*${e[2]}"
 "$si:${e[3]},${c[3]}"
 "$si:${d[3]},${g[2]}"
 "$si:${f[3]}"
 "$si:${g[3]},${e[3]}*${as[2]}"
)

# verse 2
notes+=(
 "$si:${g[2]}"
 "$si:${e[2]}"
 "$si:${c[2]}"

 "$si:${f[1]}"
 "$si:${c[3]},${a[2]}"
 "$si:${a[3]},${c[2]}"
 "$si:${c[3]},${a[2]}"
 "$si:${a[3]},${f[1]}"
 "$si:${c[3]},${a[2]}"
 "$si:${a[3]},${c[2]}"
 "$si:${c[3]},${a[2]}"

 "$si:${d[3]},${b[2]}*${g[2]}"
 "$si:${d[3]},${b[2]}"
 "$si:${b[2]},${d[2]}"
 "$si:${d[3]},${b[2]}"
 "$si:${b[2]},${g[2]}"
 "$si:${d[3]},${b[2]}"
 "$si:${b[2]},${d[2]}"
 "$si:${d[3]},${b[2]}"

 "$si:${e[3]},${c[3]}*${e[2]}"
 "$si:${e[3]},${c[3]}"
 "$si:${d[3]},${d[2]}"
 "$si:${e[3]},${c[3]}"

 "$si:${d[3]},${b[1]}"
 "$si:${g[3]},${e[3]}"
 "$si:${d[3]},${g[2]}"
 "$si:${g[3]},${e[3]}"

 "$si:${c[3]},${a[2]}"
 "$si:${e[3]},${c[3]}"
 "$si:${c[3]},${e[2]}"
 "$si:${e[3]},${c[3]}"

 "$si:${as[2]},${g[2]}"
 "$si:${d[3]},${as[2]}"
 "$si:${as[2]},${d[2]}"
 "$si:${d[3]},${as[2]}"
)

# bridge between verses 2 and 3
notes+=(
 "$si:${a[2]},${a[2]}"
 "$si:${c[3]},${a[2]}"
 "$si:${a[2]},${c[2]}"
 "$si:${c[3]},${a[2]}"

 "$si:${b[2]},${g[2]}"
 "$si:${d[3]},${b[2]}"
 "$si:${b[2]},${d[2]}"
 "$si:${d[3]},${b[2]}"

 "$si:${e[3]},${c[3]}*${c[2]}"
 "$si:${e[3]},${c[3]}*${c[2]}"
 "$si:${d[3]},${b[2]}*${b[1]}"
 "$si:${e[3]},${c[3]}*${c[2]}"
)
silence si
notes+=(
 "$si:${c[2]}"
 "$si:${d[2]}"
 "$si:${e[2]}"
)

# verse 3
for i in 1 2
do
 notes+=(
  "$si:${f[2]}"
  "$si:${a[3]},${f[3]}"
  "$si:${c[3]}"
  "$si:${a[3]},${f[3]}"
 )
done
for i in 1 2
do
 notes+=(
  "$si:${c[2]}"
  "$si:${g[3]},${e[3]}"
  "$si:${g[2]}"
  "$si:${g[3]},${e[3]}"
 )
done
notes+=(
 "$si:${as[1]}"
 "$si:${f[3]},${d[3]}"
 "$si:${d[2]}"
 "$si:${f[3]},${d[3]}"

 "$si:${c[2]}"
 "$si:${g[3]},${e[3]}"
 "$si:${g[2]}"
 "$si:${g[3]},${e[3]}"

 "$si:${f[2]}"
 "$si:${as[3]},${f[3]}"
 "$si:${c[3]}"
 "$si:${as[3]},${f[3]}"

 "$si:${f[2]}"
 "$si:${a[3]},${f[3]}"
 "$si:${c[3]}"
 "$si:${a[3]},${f[3]}"

 "$si:${d[2]}"
 "$si:${f[3]},${d[3]}"
 "$si:${f[2]}"
 "$si:${f[3]},${d[3]}"

 "$si:${as[1]}"
 "$si:${f[3]},${cs[3]}"

 "$si:${f[2]}"
 "$si:${g[3]},${e[3]}"
 "$si:${a[2]}"
 "$si:${g[3]},${e[3]}"
 "$si:${f[2]}"
 "$si:${g[3]},${e[3]}"

 "$si:${d[2]}"
 "$si:${a[3]},${fs[3]}"
 "$si:${a[2]}"
 "$si:${a[3]},${fs[3]}"

 "$si:${g[2]}"
 "$si:${f[3]},${d[3]}"
 "$si:${d[2]}"
 "$si:${f[3]},${d[3]}"

 "$si:${c[3]}"
 "$si:${g[3]},${e[3]}"
 "$si:${g[2]}"
 "$si:${g[3]},${e[3]}"

 "$si:${a[3]},${f[3]}*${a[2]}"
 "$si:${a[3]},${f[3]}"
 "$si:${g[3]},${c[3]}"
 "$si:${as[3]}"
 "$si:${c[4]},${a[3]}*${ds[3]}"
)

# verse 4
notes+=(
 "$si:${c[3]}"
 "$si:${a[2]}"
 "$si:${f[2]}"

 "$si:${as[1]}"
 "$si:${f[3]},${d[3]}"
 "$si:${d[3]},${f[2]}"
 "$si:${f[3]},${d[3]}"
 "$si:${d[3]},${as[1]}"
 "$si:${f[3]},${d[3]}"
 "$si:${d[3]},${f[2]}"
 "$si:${f[3]},${d[3]}"

 "$si:${g[3]},${e[3]}*${c[3]}"
 "$si:${g[3]},${e[3]}"
 "$si:${e[3]},${g[2]}"
 "$si:${g[3]},${e[3]}"
 "$si:${e[3]},${c[2]}"
 "$si:${g[3]},${e[3]}"
 "$si:${e[3]},${g[2]}"
 "$si:${g[3]},${e[3]}"

 "$si:${a[3]},${f[3]}*${a[2]}"
 "$si:${a[3]},${f[3]}"
 "$si:${g[3]},${g[2]}"
 "$si:${a[3]},${f[3]}"
 "$si:${g[3]},${e[2]}"

 "$si:${c[4]},${a[3]}"
 "$si:${g[3]},${c[3]}"
 "$si:${c[4]},${a[3]}"

 "$si:${f[3]},${d[3]}"
 "$si:${a[3]},${f[3]}"
 "$si:${f[3]},${a[2]}"
 "$si:${a[3]},${f[3]}"

 "$si:${ds[3]},${c[3]}"
 "$si:${g[3]},${ds[3]}"
 "$si:${ds[3]},${g[2]}"
 "$si:${g[3]},${ds[3]}"
)

# bridge between verses 4 and 5
notes+=(
 "$si:${d[3]},${d[3]}"
 "$si:${f[3]},${d[3]}"
 "$si:${d[3]},${f[2]}"
 "$si:${f[3]},${d[3]}"

 "$si:${e[3]},${c[3]}"
 "$si:${g[3]},${e[3]}"
 "$si:${e[3]},${g[2]}"
 "$si:${g[3]},${e[3]}"

 "$si:${a[3]},${f[3]}*${f[2]}"
 "$si:${a[3]},${f[3]}*${f[2]}"
 "$si:${g[3]},${e[3]}*${e[2]}"
 "$si:${a[3]},${f[3]}*${f[2]}"
)
silence si
notes+=(
 "$si:${f[2]}"
 "$si:${e[2]}"
 "$si:${c[2]}"
)

# verse 5
for i in 1 2
do
 notes+=(
  "$si:${as[1]}"
  "$si:${d[3]},${as[2]}"
  "$si:${f[2]}"
  "$si:${d[3]},${as[2]}"
 )
done
for i in 1 2
do
 notes+=(
  "$si:${f[1]}"
  "$si:${c[3]},${a[2]}"
  "$si:${c[2]}"
  "$si:${c[3]},${a[2]}"
 )
done
notes+=(
 "$si:${ds[1]}"
 "$si:${as[2]},${g[2]}"
 "$si:${g[1]}"
 "$si:${as[3]},${g[2]}"

 "$si:${f[1]}"
 "$si:${c[3]},${a[2]}"
 "$si:${c[2]}"
 "$si:${c[3]},${a[2]}"

 "$si:${as[1]}"
 "$si:${ds[3]},${as[2]}"
 "$si:${f[2]}"
 "$si:${ds[3]},${as[2]}"

 "$si:${as[1]}"
 "$si:${d[3]},${as[2]}"
 "$si:${f[2]}"
 "$si:${d[3]},${as[2]}"

 "$si:${g[1]}"
 "$si:${as[2]},${g[2]}"
 "$si:${as[1]}"
 "$si:${as[2]},${g[2]}"

 "$si:${ds[1]}"
 "$si:${as[2]},${fs[2]}"

 "$si:${as[1]}"
 "$si:${c[3]},${a[2]}"
 "$si:${d[2]}"
 "$si:${c[3]},${a[2]}"
 "$si:${as[1]}"
 "$si:${c[3]},${a[2]}"

 "$si:${g[1]}"
 "$si:${d[3]},${b[2]}"
 "$si:${d[2]}"
 "$si:${d[3]},${b[2]}"

 "$si:${c[2]}"
 "$si:${as[2]},${g[2]}"
 "$si:${g[1]}"
 "$si:${as[2]},${g[2]}"

 "$si:${f[2]}"
 "$si:${c[3]},${a[2]}"
 "$si:${c[2]}"
 "$si:${c[3]},${a[2]}"

 "$si:${d[3]},${as[2]}*${d[2]}"
 "$si:${d[3]},${as[2]}"
 "$si:${c[3]},${f[2]}"
 "$si:${ds[3]}"
 "$si:${f[3]},${d[3]}*${gs[2]}"
)

# verse 6
notes+=(
 "$si:${f[2]}"
 "$si:${d[2]}"
 "$si:${as[1]}"

 "$si:${ds[1]}"
 "$si:${as[2]},${g[2]}"
 "$si:${g[2]},${as[1]}"
 "$si:${as[2]},${g[2]}"
 "$si:${g[2]},${ds[1]}"
 "$si:${as[2]},${g[2]}"
 "$si:${g[2]},${as[1]}"
 "$si:${as[2]},${g[2]}"

 "$si:${c[3]},${a[2]}*${f[2]}"
 "$si:${c[3]},${a[2]}"
 "$si:${a[2]},${c[2]}"
 "$si:${c[3]},${a[2]}"
 "$si:${a[2]},${f[2]}"
 "$si:${c[3]},${a[2]}"
 "$si:${a[2]},${c[2]}"
 "$si:${c[3]},${a[2]}"

 "$si:${d[3]},${as[2]}*${d[2]}"
 "$si:${d[3]},${as[2]}"
 "$si:${c[3]},${c[2]}"
 "$si:${d[3]},${as[2]}"
 "$si:${c[3]},${a[1]}"

 "$si:${f[3]},${d[3]}"
 "$si:${c[3]},${f[2]}"
 "$si:${f[3]},${d[3]}"

 "$si:${as[2]},${g[2]}"
 "$si:${d[3]},${as[2]}"
 "$si:${as[2]},${d[2]}"
 "$si:${d[3]},${as[2]}"

 "$si:${gs[2]},${f[2]}"
 "$si:${c[3]},${gs[2]}"
 "$si:${gs[2]},${c[2]}"
 "$si:${c[3]},${gs[2]}"
)

# bridge between verses 6 and 7
notes+=(
 "$si:${g[2]},${g[2]}"
 "$si:${as[2]},${g[2]}"
 "$si:${g[2]},${as[1]}"
 "$si:${as[2]},${g[2]}"

 "$si:${a[2]},${f[2]}"
 "$si:${c[3]},${a[2]}"
 "$si:${a[2]},${c[2]}"
 "$si:${c[3]},${a[2]}"

 "$si:${d[3]},${as[2]}*${as[1]}"
 "$si:${d[3]},${as[2]}*${as[1]}"
 "$si:${c[3]},${a[2]}*${a[1]}"
 "$si:${d[3]},${as[2]}*${as[1]}"
)
silence si
notes+=(
 "$si:${as[1]}"
 "$si:${a[1]}"
 "$si:${f[1]}"
)

# verse 7
for i in 1 2
do
 notes+=(
  "$si:${ds[2]}"
  "$si:${g[3]},${ds[3]}"
  "$si:${as[2]}"
  "$si:${g[3]},${ds[3]}"
 )
done
for i in 1 2
do
 notes+=(
  "$si:${as[1]}"
  "$si:${f[3]},${d[3]}"
  "$si:${f[2]}"
  "$si:${f[3]},${d[3]}"
 )
done
notes+=(
 "$si:${gs[1]}"
 "$si:${ds[3]},${c[3]}"
 "$si:${c[2]}"
 "$si:${ds[3]},${c[3]}"

 "$si:${as[1]}"
 "$si:${f[3]},${d[3]}"
 "$si:${f[2]}"
 "$si:${f[3]},${d[3]}"

 "$si:${ds[2]}"
 "$si:${gs[3]},${ds[3]}"
 "$si:${as[2]}"
 "$si:${gs[3]},${ds[3]}"

 "$si:${ds[2]}"
 "$si:${g[3]},${ds[3]}"
 "$si:${as[2]}"
 "$si:${g[3]},${ds[3]}"

 "$si:${c[2]}"
 "$si:${ds[3]},${c[3]}"
 "$si:${ds[2]}"
 "$si:${ds[3]},${c[3]}"

 "$si:${gs[1]}"
 "$si:${ds[3]},${b[2]}"

 "$si:${ds[2]}"
 "$si:${f[3]},${d[3]}"
 "$si:${g[2]}"
 "$si:${f[3]},${d[3]}"
 "$si:${ds[2]}"
 "$si:${f[3]},${d[3]}"

 "$si:${c[2]}"
 "$si:${g[3]},${e[3]}"
 "$si:${g[2]}"
 "$si:${g[3]},${e[3]}"

 "$si:${f[2]}"
 "$si:${ds[3]},${c[3]}"
 "$si:${c[2]}"
 "$si:${ds[3]},${c[3]}"

 "$si:${as[2]}"
 "$si:${f[3]},${d[3]}"
 "$si:${f[2]}"
 "$si:${f[3]},${d[3]}"

 "$si:${g[3]},${ds[3]}*${g[2]}"
 "$si:${g[3]},${ds[3]}"
 "$si:${f[3]},${as[2]}"
 "$si:${gs[3]}"
 "$si:${as[3]},${g[3]}*${cs[3]}"
)

# verse 8
notes+=(
 "$si:${as[2]}"
 "$si:${g[2]}"
 "$si:${ds[2]}"

 "$si:${gs[1]}"
 "$si:${ds[3]},${c[3]}"
 "$si:${c[3]},${ds[2]}"
 "$si:${ds[3]},${c[3]}"
 "$si:${c[3]},${gs[1]}"
 "$si:${ds[3]},${c[3]}"
 "$si:${c[3]},${ds[2]}"
 "$si:${ds[3]},${c[3]}"

 "$si:${f[3]},${d[3]}*${as[2]}"
 "$si:${f[3]},${d[3]}"
 "$si:${d[3]},${f[2]}"
 "$si:${f[3]},${d[3]}"
 "$si:${d[3]},${as[2]}"
 "$si:${f[3]},${d[3]}"
 "$si:${d[3]},${f[2]}"
 "$si:${f[3]},${d[3]}"

 "$si:${g[3]},${ds[3]}*${g[2]}"
 "$si:${g[3]},${ds[3]}"
 "$si:${f[3]},${f[2]}"
 "$si:${g[3]},${ds[3]}"
 "$si:${f[3]},${d[2]}"

 "$si:${as[3]},${g[3]}"
 "$si:${f[3]},${as[2]}"
 "$si:${as[3]},${g[3]}"

 "$si:${ds[3]},${c[3]}"
 "$si:${g[3]},${ds[3]}"
 "$si:${ds[3]},${g[2]}"
 "$si:${g[3]},${ds[3]}"

 "$si:${cs[3]},${as[2]}"
 "$si:${f[3]},${cs[3]}"
 "$si:${cs[3]},${f[2]}"
 "$si:${f[3]},${cs[3]}"
)

# bridge between verses 8 and 9
notes+=(
 "$si:${c[3]},${c[3]}"
 "$si:${ds[2]},${c[3]}"
 "$si:${c[3]},${ds[2]}"
 "$si:${ds[2]},${c[3]}"

 "$si:${d[3]},${as[2]}"
 "$si:${f[3]},${d[3]}"
 "$si:${d[3]},${f[2]}"
 "$si:${f[3]},${d[3]}"

 "$si:${g[3]},${ds[3]}*${ds[2]}"
 "$si:${g[3]},${ds[3]}*${ds[2]}"
 "$si:${f[3]},${d[3]}*${d[2]}"
 "$si:${g[3]},${ds[3]}*${ds[2]}"
)

# verse 9
notes+=(
 "$si:${c[4]},${a[3]}*${f[3]}"
 "$si:${d[4]},${as[3]}*${f[3]}"
 "$si:${c[4]},${g[3]}*${e[3]}"
 "$si:${as[3]},${g[3]}*${e[3]}"

 "$si:${c[4]},${a[3]}*${f[2]}"
 "$si:${c[4]},${a[3]}"
 "$si:${a[3]},${c[3]}"
 "$si:${c[4]},${a[3]}"
 "$si:${a[3]},${f[2]}"
 "$si:${c[4]},${a[3]}"
 "$si:${a[3]},${c[3]}"
 "$si:${c[4]},${a[3]}"

 "$si:${d[4]},${b[3]}*${g[2]}"
 "$si:${d[4]},${b[3]}"
 "$si:${b[3]},${d[3]}"
 "$si:${d[4]},${b[3]}"
 "$si:${b[3]},${g[3]}"
 "$si:${d[4]},${b[3]}"
 "$si:${b[3]},${d[3]}"
 "$si:${d[4]},${b[3]}"

 "$si:${e[4]},${c[4]}*${e[3]}"
 "$si:${e[4]},${c[4]}"
 "$si:${d[4]},${d[3]}"
 "$si:${e[4]},${c[4]}"
 "$si:${d[4]},${b[2]}"

 "$si:${g[4]},${e[4]}"
 "$si:${d[4]},${g[3]}"
 "$si:${g[4]},${e[4]}"

 "$si:${c[4]},${a[3]}"
 "$si:${e[4]},${c[4]}"
 "$si:${c[4]},${e[3]}"
 "$si:${e[4]},${c[4]}"

 "$si:${as[3]},${g[3]}"
 "$si:${d[4]},${as[3]}"
 "$si:${as[3]},${d[3]}"
 "$si:${d[4]},${as[3]}"
)

# TRUE END
notes+=(
 "$si:${a[3]},${a[3]}"
 "$si:${c[4]},${a[3]}"
 "$si:${a[3]},${c[3]}"
 "$si:${c[4]},${a[3]}"

 "$si:${b[3]},${g[3]}"
 "$si:${d[4]},${b[3]}"
 "$si:${b[3]},${d[3]}"
 "$si:${d[4]},${b[3]}"

 "$si:${e[4]},${c[4]}*${c[3]}"
 "$si:${e[4]},${c[4]}*${c[3]}"
 "$si:${d[4]},${b[3]}*${b[2]}"
 "$si:${e[4]},${c[4]}*${c[3]}"
)
silence qu
notes+=(
 "$ei:${c[3]}"
 "$si:${g[3]}"
 "$si:${c[4]}"
)
silence si
notes+=( "$ha:${c[2]}" )

createSoxPipes
