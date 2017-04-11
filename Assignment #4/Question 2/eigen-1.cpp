//File that finds the largest eigen value.
//Uses b[x] += M[x][y] * v[y]

#include <iostream>
#include <stdlib.h>
#include <math.h>
using namespace std;

int check(double a[], double b[])
{
  int i;
  double lim = pow(10,-6);
  for(i=0;i<300;i++)
    if(abs(a[i]-b[i])>lim)
      return 1;
  return 0;
}

int main()
{
  double m[300][300], norm_sq, norm;
  int res;
  double tmp[300], b[300], v[300];
  int i,j,k;
  for(i=0;i<300;++i)
  {
    for(j=i;j<300;++j)
    {
      m[i][j] = ((double) rand() / (RAND_MAX));
      m[j][i] = m[i][j];
    }
  }
  for(i=0;i<300;++i)
    b[i] = ((double) rand() / (RAND_MAX));
  do {

    // calculate the length of the resulting vector:
    // if v = (v1 v2 ... vn), then ||v|| = square_root(v1*v1 + v2*v2 + ... + vn*vn)
    norm_sq = 0;
    for (k = 0; k < 300; k++) {
         norm_sq += b[k] * b[k];
    }

    norm = sqrt(norm_sq);
    // normalize b to unit vector for next iteration
    for (k=0;k<300;++k)
      v[k] = b[k]/norm;

    // calculate the matrix-by-vector product Ab
    for(i = 0; i < 300; i++) {
         tmp[i] = 0;
         for (j = 0; j < 300; j++) {
              // dot product of i-th row in A with the column vector b
              tmp[i] += m[i][j] * v[j];
         }
    }

    res = check(tmp, b);

    for(k=0;k<300;++k)
      b[k] = tmp[k];

  }while(res==1);

  cout << "Eigen Value = "<<norm<<endl;
  return 0;
}
