#lang racket/base
(require racket/file
         racket/system)
(define (run-c-program bs)
  (define src-path (make-temporary-file "~a.c"))
  (with-output-to-file src-path (λ () (write-bytes bs)) #:exists 'replace)
  (define exe-path (path-add-suffix src-path #".bin"))
  (define cc-path (find-executable-path "c++"))
  (cond [(path? cc-path)
         (system* cc-path (path->string src-path) "-o" (path->string exe-path))
         (system* exe-path)]
        [else
         (error 'run-c "can't find executable path for c++ executable.")]))
(provide run-c-program)
