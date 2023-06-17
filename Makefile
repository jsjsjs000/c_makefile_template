CC=gcc
CFLAGS=-Wall -Wextra -std=gnu11 -g -Og

all: clean build run

.PHONY: clean
clean:
	@rm -rf build/*

.PHONY: build
build:
	@mkdir -p build
	@$(CC) main.c $(CFLAGS) -o build/main

.PHONY: run
run:
	@cd build && ./main
