#include "s21_grep.h"

int main(int argc, char **argv) {
  arguments arg = argument_parser(argc, argv);
  output(arg, argc, argv);
  return 0;
}

arguments argument_parser(int argc, char **argv) {
  arguments arg = {0};
  int opt = 0;
  while ((opt = getopt(argc, argv, "e:ivclnhs")) != -1) {
    switch (opt) {
      case 'e':
        arg.e = 1;
        arg.pattern = optarg;
        break;
      case 'i':
        arg.i = REG_ICASE;
        break;
      case 'v':
        arg.v = 1;
        break;
      case 'c':
        arg.c = 1;
        break;
      case 'l':
        arg.l = 1;
        arg.c = 1;
        break;
      case 'n':
        arg.n = 1;
        break;
      case 'h':
        arg.h = 1;
        break;
      case 's':
        arg.s = 1;
        break;
    }
  }
  if (arg.pattern == NULL && optind < argc) {
    arg.pattern = argv[optind];
    optind++;
  }
  if (argc - optind == 1) {
    arg.h = 1;
  }
  return arg;
}
void output_line(char *line, int n) {
  for (int i = 0; i < n; i++) {
    putchar(line[i]);
  }
  if (line[n - 1] != '\n') putchar('\n');
}

void processFile(arguments arg, char *path, regex_t *reg) {
  FILE *f = fopen(path, "r");
  if (f == NULL) {
    if (!arg.s) {
      fprintf(stderr, "ERROR%s\n", path);
    }
    return;
  }

  char line[10000];
  char *read = NULL;
  int line_count = 1;
  int count = 0;
  while ((read = fgets(line, sizeof(line), f)) != NULL) {
    int result = regexec(reg, line, 0, NULL, 0);

    if ((result == 0 && !arg.v) || (arg.v && result != 0)) {
      if (!arg.c && !arg.l) {
        if (!arg.h) printf("%s:", path);
        if (arg.n) printf("%d:", line_count);
        output_line(line, strlen(line));
      }
      count++;
    }

    line_count++;
  }
  if (arg.c && !arg.l) {
    if (!arg.h) printf("%s:", path);
    printf("%d\n", count);
  }
  if ((arg.l) && (count > 0)) printf("%s\n", path);
  fclose(f);
}

void output(arguments arg, int argc, char **argv) {
  regex_t re;
  int error = regcomp(&re, arg.pattern, REG_EXTENDED | arg.i);
  if (error) fprintf(stderr, "ERROR\n");
  for (int i = optind; i < argc; i++) {
    processFile(arg, argv[i], &re);
    optind++;
  }
  regfree(&re);
}