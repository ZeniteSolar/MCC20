# ref: https://stackoverflow.com/a/40621556
CC := gcc
SRCDIR := src
OBJDIR := obj
INCDIR := inc
BINDIR := bin
TARGET = main

CFLAGS := 
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
LDFLAGS := 

SRCS    =   $(shell find $(SRCDIR) -type f -name \*.c)
OBJS    =   $(patsubst $(SRCDIR)/%,$(OBJDIR)/%,$(SRCS:.c=.o))

.PHONY: mkdirs

all: mkdirs $(TARGET) 

mkdirs: 
	\mkdir -p $(SRCDIR) $(OBJDIR) $(BINDIR)

clean:
	@echo "Cleaning..."
	@echo ""
	\rm -rf $(OBJDIR) $(BINDIR)

.SECONDARY:

main: $(OBJS)
	@echo "Linking:" $@...
	@echo ""
	$(CC) $(CFLAGS) -I $(INCDIR) $(OBJS) -o $(BINDIR)/$@ $(LDFLAGS)

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	@echo "[$(TARGET)] Compiling:" $@...
	@echo ""
	$(CC) $(CFLAGS) -I $(INCDIR) -MMD -MF $(@:%.o=%.d) -c $< -o $@

$(OBJDIR)/%.d: $(SRCDIR)/%.c
	@echo "[$(TARGET)] Generating dependency:" $@...
	@echo ""
	$(CC) $(CFLAGS) -I $(INCDIR) -MM -MT $(addsuffix .o, $(basename $@)) -MF $@ $<

