#!/bin/sh

b=1000
a=0

echo -n "Size\tO1\tO2\tO3\tO4\tO5\tO6\n" > output.txt

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
    if [ "$a" -eq 0 ]; then
      time=$res
    else
      speedup=`echo "scale=4;$time/$res" | bc`
      echo -n "$speedup\t" >> output.txt
    fi
    a=`expr $a + 1`
  done
  echo "\n" >> output.txt
  b=`expr $b + 1000`
done
