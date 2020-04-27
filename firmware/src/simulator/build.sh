#!/bin/sh

gcc -Wall \
    -I/usr/local/include \
    -L/usr/local/lib \
    -lm \
    main.c \
    -o main 

