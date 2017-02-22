#!/bin/sh

b=1000
a=0

gcc -funroll-loops -o funroll question.c
gcc -funroll-loops -S -o funroll_assembly.s question.c
echo "Size\tExecution Time" > output_funroll.txt

while [ "$b" -lt 1048576000 ]
do
  echo -n "$b\t" >> output_funroll.txt
  res=`./funroll $b`
  echo -n "$res" >> output_funroll.txt
  echo "\n" >> output_funroll.txt
  b=`expr $b \* 2`
done
