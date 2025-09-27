#ifndef GREP_H
#define GREP_H
#include <getopt.h>
#include <regex.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
typedef struct arguments {
  int e, i, v, c, l, n, h, s, f, o;
  char *pattern;
} arguments;

arguments argument_parser(int argc, char **argv);
void output_line(char *path, int n);
void processFile(arguments arg, char *path, regex_t *reg);
void output(arguments arg, int argc, char **argv);
#endif