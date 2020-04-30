#!/bin/sh

# Clean
\rm -rf bin

# Prepare
\mkdir -p bin

# Build
gcc src/*.c -I inc/ -o bin/out.o &&

# Run    
./bin/out.o
