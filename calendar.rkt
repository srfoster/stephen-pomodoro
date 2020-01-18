#lang racket

(provide schedule)

(require pomodoro
         (except-in website/bootstrap meta)
         (prefix-in p: pomodoro/calendar)
         "./tags.rkt")

(define (schedule t #:start s #:duration d #:data (data #f))
  (cond 
    [(tagged-with? t milestone)
     (p:schedule t 
                 #:start s 
                 #:duration d
                 #:renderer badge-pill-warning
                 #:data data)]
    [(tagged-with? t work)
     (p:schedule t 
                 #:start s 
                 #:duration d
                 #:renderer badge-pill-info
                 #:data data)]
    [else
      (p:schedule t #:start s #:duration d
                  #:data data)]))
