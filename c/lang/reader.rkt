(module reader syntax/module-reader
  #:language 'c/main
  #:read (lambda ([in (current-input-port)]) (read-c-syntax #f in))
  #:read-syntax read-c-syntax
  #:whole-body-readers? #t
  (require (file "../read.rkt")))
