#lang racket

(provide exports->list)

(define (exports->list path)
  (define-values (funcs macros)
    (module->exports path))

  (define func-names
    (map first (rest (first funcs))))

  (map
    (lambda (n) (dynamic-require path n))
    func-names))

