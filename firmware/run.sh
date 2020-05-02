#!/bin/sh

# Clean
\rm -rf bin *_socket

# Prepare
\mkdir -p bin

# Build
FLAGS="
    -std=gnu99 -O2 \
    -pedantic -Wall -Wextra \
    -Wconversion \
    -Wshadow \
    -Wunsafe-loop-optimizations \
    -Waddress \
    -Wlogical-op \
    -Wstrict-prototypes \
    -Wold-style-definition \
    -Wmissing-prototypes \
    -Wmissing-declarations \
    -Wpacked \
    -Wundef \
    -Wredundant-decls \
    -Wnested-externs \
    -Wunreachable-code \
    -Winline \
    -Woverlength-strings \
    -Wpointer-sign \
    -Wdisabled-optimization \
    -Wvariadic-macros \
    -fstrict-aliasing \
    -Wstrict-overflow=5 -fstrict-overflow
"
gcc ${FLAGS} -Iinc/ src/*.c -obin/main &&

# Run    
./bin/main.o
