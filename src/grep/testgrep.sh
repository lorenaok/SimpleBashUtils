#!/bin/bash
#1 -e
./s21_grep -e int s21_grep.c >> s21_grep.txt
grep -e int s21_grep.c >> grep.txt
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

#2 -i
./s21_grep -i print s21_grep.c >> s21_grep.txt
grep -i print s21_grep.c >> grep.txt
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

#3 -h 
./s21_grep -h options s21_grep.c s21_grep.h > s21_grep.txt
grep -h options s21_grep.c s21_grep.h > grep.txt
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

#4 -v
./s21_grep -v print s21_grep.c > s21_grep.txt
grep -v print s21_grep.c > grep.txt
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

#5 -n
./s21_grep -n print s21_grep.h > s21_grep.txt
grep -n print s21_grep.h > grep.txt
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

#6 -c
./s21_grep -c print s21_grep.c > s21_grep.txt
grep -c print s21_grep.c > grep.txt
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

#7 -l
./s21_grep -l print s21_grep.c s21_grep.c s21_grep.c > s21_grep.txt
grep -l print s21_grep.c s21_grep.c s21_grep.c > grep.txt
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt


#10 -iv
./s21_grep -iv print s21_grep.c > s21_grep.txt
grep -iv print s21_grep.c > grep.txt
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

#11 -h
./s21_grep -h print s21_grep.c > s21_grep.txt
grep -h print s21_grep.c > grep.txt
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

#14 int
./s21_grep int s21_grep.c s21_grep.h > s21_grep.txt
grep int s21_grep.c s21_grep.h > grep.txt
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

#15 -v s
./s21_grep -v s s21_grep.h > s21_grep.txt
grep -v s s21_grep.h > grep.txt
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

#15 -c s
./s21_grep -c s s21_grep.h > s21_grep.txt
grep -c s s21_grep.h > grep.txt
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

#20 -iv
./s21_grep -iv s s21_grep.c > s21_grep.txt
grep -iv s s21_grep.c > grep.txt
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt

#21 -lv
./s21_grep -lv s s21_grep.c > s21_grep.txt
grep -lv s s21_grep.c > grep.txt
diff -s s21_grep.txt grep.txt
rm s21_grep.txt grep.txt