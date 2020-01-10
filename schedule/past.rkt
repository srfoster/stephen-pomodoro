#lang racket

(provide (all-defined-out))

(require pomodoro
         pomodoro/calendar
         gregor
         "../tasks.rkt")

(define jan-8-2020
  (list
    (schedule todos-to-calendar
              #:start (moment 2020 1 8 10)
              #:duration 0.5)

    (schedule hiring-meeting
              #:start (moment 2020 1 8 10 30)
              #:duration 0.5)

    (schedule big-picture-jan-8-2020
              #:start (moment 2020 1 8 12)
              #:duration 0.5)

    (schedule remove-define-icons-from
              #:start (moment 2020 1 8 12 30)
              #:duration 1) ))
