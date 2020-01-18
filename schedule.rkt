#lang racket

;Random:
;  * Personal wikipedia pages


(provide future-events)

(require pomodoro
         "./calendar.rkt"
         gregor
         (prefix-in w: website/bootstrap)
         "./tasks.rkt"
         "./schedule/past.rkt")

(define jan-16-2020
  (list

    (schedule exercise
              #:start (moment 2020 1 16 16 30)
              #:duration 1)

    (schedule breakdown:online-courses
              #:start (moment 2020 1 16 17 30)
              #:duration 1.5
              #:data "Get focused on what's exciting about this project.  Make some stuff!!!  Figure out how to excited about making stuff.  Figure out how not to get sidetracked by: writing code, planning forever, spending all time on process over progress"))) 

(define jan-17-2020
  (list

    (schedule milestone-transition
              #:start (moment 2020 1 17 8 30)
              #:duration 0.5
              #:data "Pivot to content creation again.  Online courses.  Start blogging habit.  Make this into material for Books 1,2,3.")

    (schedule time-management
              #:start (moment 2020 1 17 9)
              #:duration 0.5)

    (schedule meta-engine-hotswap-story
              #:start (moment 2020 1 17 9 30)
              #:duration 1)

    (schedule write-writer-guidelines
              #:start (moment 2020 1 17 10 30)
              #:duration 1
              #:data "Also, schedule todos related to continued content production.  If I'm switching to backend, we should make sure this doesn't slow down...")

    (schedule break
              #:start (moment 2020 1 17 12 30)
              #:duration 0.5
              #:data "Get psyched to do more backend work")

    (schedule exercise
              #:start (moment 2020 1 17 16 30)
              #:duration 1)))


(define jan-18-2020
  (list


    (schedule unstructured
              #:start (moment 2020 1 18 7 30)
              #:duration 12)
    ))


(define jan-20-2020
  (list
    (schedule automated-training:log-progress-with-mona-and-emily-2
              #:start (moment 2020 1 20 9)
              #:duration 0.5)
    ))

(define jan-22-2020
  (list
    (schedule psych-meeting
              #:start (moment 2020 1 22 11)
              #:duration 1)
    ))

(define jan-27-2020
  (list
    (schedule automated-training:log-progress-with-mona-and-emily-3
              #:start (moment 2020 1 27 9)
              #:duration 0.5)))

(define feb-1-2020
  (list
    (schedule exercise
              #:start (moment 2020 2 1 16 30)
              #:duration 1)))


(define future-events 
  (append
    jan-16-2020
    jan-17-2020
    jan-18-2020
    jan-20-2020
    jan-27-2020

    feb-1-2020
    ))



