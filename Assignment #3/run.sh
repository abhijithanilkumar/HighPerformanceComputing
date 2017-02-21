#!/bin/sh

b=1000
a=0

echo -n "Size\tO0\tO1\tO2\tO3\tO4\tO5\tO6\n" > output.txt

while [ "$a" -lt 7 ]
do
  gcc -O$a -o question_o$a question.c
  a=`expr $a + 1`
done

while [ "$b" -gt 0 ]
do
  echo -n "$b\t" >> output.txt
  a=0
  while [ "$a" -lt 7 ]
  do
    res=`./question_o$a $b`
    a=`expr $a + 1`
    echo -n "$res\t" >> output.txt
  done
  echo "\n" >> output.txt
  b=`expr $b + 1000`
done
