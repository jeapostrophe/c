#lang setup/infotab
(define name "C")
(define blurb
  (list "A #lang for C"))
(define scribblings '(["c.scrbl" (multi-page) (experimental)]))
(define categories '(devtools))
(define primary-file "main.rkt")
(define release-notes 
  (list
   '(ul (li "Initial release"))))
(define repositories '("4.x"))
