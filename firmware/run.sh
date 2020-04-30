#!/bin/sh

\rm -rf bin
\mkdir -p bin

gcc src/*.c -I inc/ -o bin/out.o &&

./bin/out.o
