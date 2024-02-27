#!/bin/bash
bytecode=$(forge inspect Counter bytecode --silent)
output=$(cast create2 --init-code "$bytecode" --starts-with 000000 --no-random | awk '/Salt:/ {print "" $2 ""}')
echo "$output" > .temp
