#!/bin/sh

# Clean
\rm -rf bin *_socket

# Prepare
\mkdir -p bin

# Build
gcc -Wall -O0 src/*.c -I inc/ -o bin/main.o &&

# Run    
./bin/main.o
