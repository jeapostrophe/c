#lang planet jaymccarthy/c

#include <stdio.h>

int main() {
  int x = 0.0;
  float r = (++x) / (++x);
  printf("%4.2f\n", r);
  r = 1.0 / 2.0;
  printf("%4.2f\n", r);
  return 0;
}