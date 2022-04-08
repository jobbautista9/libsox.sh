#!/bin/bash
sox -q -V1 "${@:2}" -t wav "$1" # $1 = outfile
