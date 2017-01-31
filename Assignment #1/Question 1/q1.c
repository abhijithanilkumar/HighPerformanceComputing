#include<stdio.h>

#ifdef __STDC_IEC_559__
#define IEEE 1
#else
#define IEEE 0
#endif

int main()
{
  int i = IEEE;
  if(i == 1)
    printf("The machine uses IEEE 754 representation!\n");
  else
    printf("The machine does not use IEEE 754 representation!\n");
  float f = 1.0/0.0;
  printf("NaN representation : %f\n", 0.0/0.0);
  printf("Infinity representation : %f\n", f);
  int *largest = (int*) &f;
  --(*largest);

  double num, epsilon;
  epsilon = 1;
  do {
    epsilon /= 2;
    num = epsilon/2;
  } while(num != 0);
  printf("Epsilon = %e\n", epsilon);
  printf("Largest positive number = %f\n", f);
  printf("Smallest positive number = %e\n", epsilon);
  return 0;
}
