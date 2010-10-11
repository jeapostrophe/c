#lang racket
(define (run-c-program bs)
  (define src-path (make-temporary-file "~a.c"))
  (with-output-to-file src-path (λ () (write-bytes bs)) #:exists 'replace)
  (define exe-path (path-add-suffix src-path #".bin"))
  (define cc-path (find-executable-path "cc"))
  (system* cc-path (path->string src-path) "-o" (path->string exe-path))
  (system* exe-path))
(provide run-c-program)