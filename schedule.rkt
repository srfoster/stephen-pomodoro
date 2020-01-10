#lang racket

(provide events)

(require pomodoro
         pomodoro/calendar
         gregor
         "./tasks.rkt"
         "./schedule/past.rkt")


(define jan-9-2020
  (list
    (schedule fix-calendar-dates
              #:start (moment 2020 1 9 8 30)
              #:duration 0.5) 

    (schedule morning-todos-jan-9-2020
              #:start (moment 2020 1 9 8 0)
              #:duration 0.5) 

    (schedule put-all-tasks-on-calendar
              #:start (moment 2020 1 9 9 30)
              #:duration 0.5) 

    (schedule big-picture-jan-9-2020
              #:start (moment 2020 1 9 10)
              #:duration 0.5)

    (schedule sara:next-tech-steps
              #:start (moment 2020 1 9 10 30)
              #:duration 0.5)

    (schedule edit-stories
              #:start (moment 2020 1 9 11)
              #:duration 1)

    (schedule jan-9-2020-take-break-1
              #:start (moment 2020 1 9 12)
              #:duration 0.5)

    (schedule mc-classmaps-tickets
              #:start (moment 2020 1 9 12 30)
              #:duration 1)

    (schedule mc-classmaps-tickets-2
              #:start (moment 2020 1 9 11 30)
              #:duration 2)


    ;Evening...
    (schedule breakdown:email-flows
              #:start (moment 2020 1 9 18 0)
              #:duration 1)
    ))

(define jan-10-2020
  (list
    (schedule edit-stories
              #:start (moment 2020 1 10 10)
              #:duration 1)

    (schedule breakdown:online-tutoring-system
              #:start (moment 2020 1 10 11)
              #:duration 0.5)

    (schedule breakdown:tpes-training-process
              #:start (moment 2020 1 10 11 30)
              #:duration 1)

    (schedule write-writer-guidelines
              #:start (moment 2020 1 10 12 30)
              #:duration 1)

    (schedule meta-engine-hotswap-story
              #:start (moment 2020 1 10 13 30)
              #:duration 1)))


(define jan-12-2020
  (list
    (schedule redo-task-wall
              #:start (moment 2020 1 12 9)
              #:duration 1)))

(define jan-13-2020
  (list
    (schedule fix-pomo-calendar-months
              #:start (moment 2020 1 13 9)
              #:duration 0.5)))

(define events 
  (append
    jan-8-2020
    jan-9-2020
    jan-10-2020
    jan-12-2020
    jan-13-2020))



