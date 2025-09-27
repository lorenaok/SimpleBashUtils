CC = gcc
CFLAGS = -Wall -Wextra -Werror -std=c11

all: s21_grep

s21_cat: s21_grep.h s21_grep.c
	$(CC) $(CFLAGS) -o s21_grep s21_grep.c

clean:
	rm -rf s21_grep

rebuild: clean all