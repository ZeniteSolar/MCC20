#!/bin/sh

# Clean
\rm -rf bin

# Prepare
\mkdir -p bin

# Build
gcc -Wall -O0 src/*.c -I inc/ -o bin/main &&

# Run    
./bin/main
