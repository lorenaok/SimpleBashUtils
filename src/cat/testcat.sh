#!/bin/bash

#1 
./s21_cat test2.txt >> s21_cat1.txt
cat test2.txt >> cat.txt
diff -s s21_cat1.txt cat.txt
rm s21_cat1.txt cat.txt
#2 -b
./s21_cat -b test2.txt >> s21_cat2.txt
cat -b test2.txt >> cat.txt
diff -s s21_cat2.txt cat.txt
rm s21_cat2.txt cat.txt
#3 -e
./s21_cat -e test2.txt >> s21_cat3.txt
cat -e test2.txt >> cat.txt
diff -s s21_cat3.txt cat.txt
rm s21_cat3.txt cat.txt

#4 -s
./s21_cat -s test2.txt >> s21_cat4.txt
cat -s test2.txt >> cat.txt
diff -s s21_cat4.txt cat.txt
rm s21_cat4.txt cat.txt

#5 -t
./s21_cat -t test2.txt >> s21_cat5.txt
cat -t test2.txt >> cat.txt
diff -s s21_cat5.txt cat.txt
rm s21_cat5.txt cat.txt

#6 -v
./s21_cat -v test2.txt >> s21_cat6.txt
cat -v test2.txt >> cat.txt
diff -s s21_cat6.txt cat.txt
rm s21_cat6.txt cat.txt

#7 -sn
./s21_cat -sn test2.txt >> s21_cat7.txt
cat -sn test2.txt >> cat.txt
diff -s s21_cat7.txt cat.txt
rm s21_cat7.txt cat.txt

#8 -sv
./s21_cat -sv test2.txt >> s21_cat8.txt
cat -sv test2.txt >> cat.txt
diff -s s21_cat8.txt cat.txt
rm s21_cat8.txt cat.txt

#9 -sb
./s21_cat -sb test2.txt >> s21_cat9.txt
cat -sb test2.txt >> cat.txt
diff -s s21_cat9.txt cat.txt
rm s21_cat9.txt cat.txt

#11 -set
./s21_cat -set test2.txt >> s21_cat11.txt
cat -set test2.txt >> cat.txt
diff -s s21_cat11.txt cat.txt
rm s21_cat11.txt cat.txt

#12 -bb
./s21_cat -b test2.txt test1.txt >> s21_cat12.txt
cat -b test2.txt test1.txt >> cat.txt
diff -s s21_cat12.txt cat.txt
rm s21_cat12.txt cat.txt

#13 -n
./s21_cat -n test2.txt >> s21_cat13.txt
cat -n test2.txt >> cat.txt
diff -s s21_cat13.txt cat.txt
rm s21_cat13.txt cat.txt

#14 -ne
./s21_cat -ne test2.txt >> s21_cat14.txt
cat -ne test2.txt >> cat.txt
diff -s s21_cat14.txt cat.txt
rm s21_cat14.txt cat.txt
