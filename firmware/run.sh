#!/bin/sh

# Clean
\rm -rf *_socket

make

# Run    
./bin/main
