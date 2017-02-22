#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include<string.h>

clock_t begin, end;

int main()
{
  long size = 10000;
  double a[10000], b[10000], c[10000], cpuTimeUsed;
  memset(a, 1, sizeof(a));
  memset(b, 3, sizeof(b));
  long i;
  begin = clock();
  for(i=0; i<10000; ++i)
  {
    c[i] = a[i]+b[i];
  }
  end = clock();
  cpuTimeUsed = ((double) (end - begin)) / CLOCKS_PER_SEC;
  printf("%lf", cpuTimeUsed);
  return 0;
}
