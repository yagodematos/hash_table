CC=gcc
CFLAGS= -Wall -Wextra -pedantic -lm

src = $(wildcard src/*.c)
obj = $(src:.c=.o)

hash_table: $(obj)
	$(CC) -o build/$@ $^ $(CFLAGS)

.PHONY: clean
clean:
	rm -fv $(obj) hash_table
