#include <stdio.h>

int main()
{
  double a[1000], b[1000], c[1000];
  int i;
  for (i=0;i<1000;++i)
  {
    a[i] = 20;
    b[i] = 30;
    c[i] = a[i] + 20*b[i];
  }
  return 0;
}
