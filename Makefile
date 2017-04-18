CC=gcc
CFLAGS=-O3 -Wall -std=gnu99
LDFLAGS=-lm

all: ohgodatool

ohgodatool: ohgodatool-args.c ohgodatool-utils.c ohgodatool.c ohgodatool-common.h ohgodatool.h vbios-tables.h
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

install: all
	cp -v ohgodatool /usr/local/bin/

clean:
	rm -f ohgodatool
