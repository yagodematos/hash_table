CC=gcc
CFLAGS= -Wall -Wextra -pedantic -std=c99

src = $(wildcard src/*.c)
obj = $(src:.c=.o)

hash_table: $(obj)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean
clean:
	rm -fv $(obj) hash_table
