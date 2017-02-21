#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include<string.h>

clock_t begin, end;

int main(int argc, char *argv[])
{
  long size = atoi(argv[1]);
  double *a, *b, *c, cpuTimeUsed;
  a = (double*)malloc(size*sizeof(double));
  b = (double*)malloc(size*sizeof(double));
  c = (double*)malloc(size*sizeof(double));
  memset(a, 1, sizeof(a));
  memset(b, 3, sizeof(b));
  long i;
  begin = clock();
  for(i=0; i<size; ++i)
  {
    c[i] = a[i]+b[i];
  }
  end = clock();
  cpuTimeUsed = ((double) (end - begin)) / CLOCKS_PER_SEC;
  printf("%lf", cpuTimeUsed);
  return 0;
}
