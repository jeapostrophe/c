(module reader syntax/module-reader
  #:language `(planet ,(this-package-version-symbol main))
  #:read (lambda ([in (current-input-port)]) (read-c-syntax #f in))
  #:read-syntax read-c-syntax
  #:whole-body-readers? #t
  (require planet/version
           (file "../read.rkt")))
