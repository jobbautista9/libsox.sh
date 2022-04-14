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
___  __   ___       __        ___  __   __        __
 |  |__) |__   /\  /  ` |__| |__  |__) /  \ |  | /__`
 |  |  \ |___ /~~\ \__, |  | |___ |  \ \__/ \__/ .__/

                          __   ___
             |\/|  /\  | |  \ |__  |\ |
             |  | /~~\ | |__/ |___ | \|

                        _      _
                      // \ \_//

               __        __             __   __
       | |  | |  \  /\  /__`    |__/ | /__` /__`
    \__/ \__/ |__/ /~~\ .__/    |  \ | .__/ .__/

Treacherous Maiden ~ Judas Kiss
Composed by ZUN for Touhou Kaikidan: Mystic Square
Arranged by Job Bautista

'

setTempo 150

# intro
function se-5s {
 declare -n note1=$1 # If I use "${$1[3]}" instead of this, bash complains
 declare -n note2=$2 # about a "bad substitution" error
 declare -n note3=$3
 notes+=(
  "$si:${note1[$4]}"
  "$ei:0"
  "$si:${note2[$4]}"
  "$si:${note3[$5]}"
  "$si:0"
  "$si:${note3[$6]}"
  "$si:0"
 )
}
for i in {1..3}; do se-5s cs f as 4 2 4; done;
notes+=(
 "$si:${cs[4]}"
 "$si:0"
 "$si:${f[4]}"
 "$si:0"
 "$si:${as[4]}"
 "$si:${f[4]}"
 "$si:${cs[4]}"
 "$si:0"
)
se-5s ds fs b 4 2 4
se-5s f gs cs 4 3 5
notes+=(
 "$si:${fs[4]}"
 "$ei:0"
 "$si:${a[4]}"
 "$si:${d[3]}"
 "$si:0"
 "$si:${cs[5]}"
 "$si:0"

 "$si:${gs[4]}"
 "$si:0"
 "$si:${b[4]}"
 "$si:0"
 "$si:${e[5]}"
 "$si:0"
 "$si:${d[5]}"

 "$ha:0"
)

createSoxPipes

# loop start
notes=()

# verse 1
function verse1-start-afscs {
 notes+=(
  "$si:${a[4]}"
  "$si:${fs[4]}"
  "$si:${cs[4]}"
 )
}
function bge {
 notes+=(
  "$si:${b[4]}"
  "$si:${gs[4]}"
  "$si:${e[4]}"
 )
}
function afsafscs {
 notes+=(
  "$si:${a[4]}"
  "$si:${fs[4]}"
  "$si:${a[4]}"
  "$si:${fs[4]}"
  "$si:${cs[4]}"
 )
}
function bge-afsafscs { bge; afsafscs; };
function verse1-common {
 bge-afsafscs
 bge-afsafscs
 bge-afsafscs
 bge; notes+=( "$si:${a[4]}" "$si:${fs[4]}" );
 notes+=( "$si:${a[5]}" );
 function fscsb {
  notes+=(
   "$si:${fs[4]}"
   "$si:${cs[4]}"
   "$si:${b[4]}"
  )
 }
 fscsb; notes+=( "$si:${a[5]}" );
 function eafs {
  notes+=(
   "$si:${e[4]}"
   "$si:${a[4]}"
   "$si:${fs[4]}"
  )
 }
 eafs; notes+=( "$si:${a[5]}" );
 fscsb; notes+=( "$si:${a[5]}" );
 eafs; notes+=( "$si:${gs[5]}" );
 fscsb; notes+=( "$si:${fs[5]}" );
 eafs; notes+=( "$si:${e[5]}" );
 fscsb; notes+=( "$si:${b[4]}" );
 eafs; notes+=( "$si:${fs[5]}" );
 fscsb; notes+=( "$si:${fs[5]}" );
 eafs; notes+=( "$si:${fs[5]}" );
 fscsb; notes+=( "$si:${fs[5]}" );
 eafs; notes+=( "$si:${f[5]}" );
 notes+=(
  "$si:${cs[5]}"
  "$si:${b[4]}"
  "$si:${a[4]}"
  "$si:${gs[4]}"
  "$si:${fs[4]}"
  "$si:${f[4]}"
  "$si:${f[4]}"

  "$si:${b[5]}"
  "$si:${a[5]}"
  "$si:${gs[5]}"
  "$si:${fs[5]}"
  "$si:${f[5]}"
  "$si:${cs[5]}"
  "$si:${b[4]}"
  "$si:${a[4]}"
 )
}
verse1-start-afscs; verse1-common;
verse1-start-afscs
for i in {1..4}; do bge-afsafscs; done;
verse1-common; verse1-start-afscs;
for i in {1..3}; do bge-afsafscs; done;
bge; notes+=( "$si:${a[4]}" )

# verse 2
notes+=( "$si:${fs[4]}" )
function verse2 {
 function fs4_12 {
  for i in {1..12}
  do
   notes+=( "$si:${fs[4]}" )
  done
 }
 fs4_12
 function cs5_4 {
  for i in {1..4}
  do
   notes+=( "$si:${cs[5]}" )
  done
 }
 cs5_4
 fs4_12
 cs5_4
 fs4_12
 cs5_4
 for i in {1..3}
 do
  notes+=(
   "$si:${b[4]}"
   "$si:${b[4]}"
   "$si:${gs[4]}"
   "$si:${gs[4]}"
  )
 done
 notes+=(
  "$si:${a[4]}"
  "$si:${a[4]}"
  "$si:${b[4]}"
  "$si:${b[4]}"
 )
 function cs_8to_cs {
  notes+=(
   "$si:${cs[6]}"
   "$si:${fs[5]}"
   "$si:${b[5]}"
   "$si:${fs[5]}"
   "$si:${a[5]}"
   "$si:${fs[5]}"
   "$si:${gs[5]}"
   "$si:${e[5]}"
   "$si:${fs[5]}"
   "$si:${cs[5]}"
  )
 }
 function b_4to_fs {
  notes+=(
   "$si:${b[4]}"
   "$si:${cs[5]}"
   "$si:${a[4]}"
   "$si:${fs[4]}"
   "$si:${gs[4]}"
   "$si:${fs[4]}"
  )
 }
 for i in {1..3}; do cs_8to_cs; b_4to_fs; done;
 cs_8to_cs
 notes+=(
  "$si:${gs[5]}"
  "$si:${cs[5]}"
  "$si:${a[5]}"
  "$si:${cs[5]}"
  "$si:${b[5]}"
  "$si:${cs[5]}"
 )
}
verse2; verse2;

# verse 3 which is basically lower pitched verse 2
function verse3 {
 function ds4_12 {
  for i in {1..12}
  do
   notes+=( "$si:${ds[4]}" )
  done
 }
 ds4_12
 function as4_4 {
  for i in {1..4}
  do
   notes+=( "$si:${as[4]}" )
  done
 }
 as4_4
 ds4_12
 as4_4
 ds4_12
 as4_4
 for i in {1..3}
 do
  notes+=(
   "$si:${gs[4]}"
   "$si:${gs[4]}"
   "$si:${f[4]}"
   "$si:${f[4]}"
  )
 done
 notes+=(
  "$si:${fs[4]}"
  "$si:${fs[4]}"
  "$si:${gs[4]}"
  "$si:${gs[4]}"
 )
 function as_8to_as {
  notes+=(
   "$si:${as[5]}"
   "$si:${ds[5]}"
   "$si:${gs[5]}"
   "$si:${ds[5]}"
   "$si:${fs[5]}"
   "$si:${ds[5]}"
   "$si:${f[5]}"
   "$si:${cs[5]}"
   "$si:${ds[5]}"
   "$si:${as[4]}"
  )
 }
 function gs_4to_ds {
  notes+=(
   "$si:${gs[4]}"
   "$si:${as[4]}"
   "$si:${fs[4]}"
   "$si:${ds[4]}"
   "$si:${f[4]}"
   "$si:${ds[4]}"
  )
 }
 for i in {1..3}; do as_8to_as; gs_4to_ds; done;
 as_8to_as
 notes+=(
  "$si:${f[5]}"
  "$si:${as[4]}"
  "$si:${fs[5]}"
  "$si:${as[4]}"
  "$si:${gs[5]}"
  "$si:${as[4]}"
 )
}
verse3; verse3;
notes+=( "$qu:25" "$qu:0" )

createSoxPipes
