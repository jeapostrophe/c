#lang racket/base
(require racket/port "runtime.rkt")
(define (read-c-syntax [source-name #f] [in (current-input-port)])
  (list
   `(run-c-program ,(port->bytes in))))
(provide read-c-syntax)
