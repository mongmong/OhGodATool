CC=gcc
CFLAGS=-O3 -Wall -std=gnu99
LDFLAGS=-lm

all: ohgodatool

ohgodatool: ohgodatool-args.c ohgodatool-utils.c ohgodatool.c
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

install: all
	cp -v ohgodatool /usr/local/bin/

clean:
	rm -f ohgodatool
