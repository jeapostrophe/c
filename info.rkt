#lang setup/infotab
(define name "C")
(define blurb
  (list "A #lang for C"))
(define scribblings '(["c.scrbl" (multi-page)]))
(define categories '(devtools))
(define compile-omit-paths '("examples"))
(define release-notes 
  (list
   '(ul (li "Initial release"))))
(define repositories '("4.x"))
