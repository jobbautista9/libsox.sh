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

setTempo 120

function part1 {
 notes+=(
  $dei:${cs[4]}
  $ei:0
  $si:0
  $si:${cs[4]}
  $si:${cs[4]}
  $ei:${cs[4]}
  $ei:${cs[4]}
  $ei:${cs[4]}
  $ei:0
 )
}
part1; part1;
notes+=(
 $ei:${ds[4]}
 $qu:0
 $si:${ds[4]}
 $si:${ds[4]}
 $ei:${ds[4]}
 $ei:${ds[4]}
 $dei:${ds[4]}
 $si:0

 $dei:${e[4]}
 $ei:0
 $si:0
 $si:${e[4]}
 $si:${e[4]}
 $ei:${e[4]}
 $ei:${e[4]}
 $qu:${c[4]}
)

createSoxPipes
