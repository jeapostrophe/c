#lang c

#include <stdio.h>

float f( float x1, float x2 ) {
 return x1 / x2;
}

int main() {
  int x = 0;
  float r = (++x) / (++x);
  printf("%4.2f\n", r);
  x = 0;
  r = f((++x),(++x));
  printf("%4.2f\n", r);
  r = 1.0 / 2.0;
  printf("%4.2f\n", r);
  r = 2.0 / 1.0;
  printf("%4.2f\n", r);
  return 0;
}
