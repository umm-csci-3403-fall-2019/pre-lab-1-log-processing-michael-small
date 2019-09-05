#!/usr/bin/env bash

sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt

awk 'match($0, /(\w+), (\w+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r2_input.txt > r2_output.txt

cat r2_output.txt
