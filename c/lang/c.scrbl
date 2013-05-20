#lang scribble/doc
@(require scribble/manual)

@title[#:tag "top"]{C}
@author[(author+email "Jay McCarthy" "jay@racket-lang.org")]

This package is for writing C programs in DrRacket. I use it in class
to demonstrate things in C very quickly.

Here is a little example:
@verbatim{
#lang c

#include <stdio.h>

int main() {
  int x = 0.0;
  float r = (++x) / (++x);
  printf("%4.2f\n", r);
  r = 1.0 / 2.0;
  printf("%4.2f\n", r);
  return 0;
}
}
