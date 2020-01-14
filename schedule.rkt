#lang racket

(provide future-events)

(require pomodoro
         "./calendar.rkt"
         gregor
         (prefix-in w: website/bootstrap)
         "./tasks.rkt"
         "./schedule/past.rkt")


(define jan-13-2020
  (list

    (schedule exercise
              #:start (moment 2020 1 13 18)
              #:duration 1)

    ))

(define jan-14-2020
  (list

    (schedule big-picture
              #:start (moment 2020 1 14 8 30)
              #:duration 0.5)

    (schedule time-management
              #:start (moment 2020 1 14 9)
              #:duration 0.5)

    ;Deal with me...
    (schedule breakdown:make-1-new-summer-k2-clicker-lang
              #:start (moment 2020 1 14 9)
              #:duration 0.5)


    (schedule backend:sketch-out-architecture 
              #:start (moment 2020 1 14 10)
              #:duration 0.5)

    (schedule automated-training:way-to-define-training-milestones
              #:start (moment 2020 1 14 10 30)
              #:duration 1)

    (schedule automated-training:way-to-log-training-milestone-completion
              #:start (moment 2020 1 14 11 30)
              #:duration 1)

    (schedule break
              #:start (moment 2020 1 14 12 30)
              #:duration 0.5
              #:data "Get psyched up to finish off the editing stuff below")
    
    (schedule write-writer-guidelines
              #:start (moment 2020 1 14 13)
              #:duration 1
              #:data "Also, schedule todos related to continued content production.  If I'm switching to backend, we should make sure this doesn't slow down...")

    (schedule meta-engine-hotswap-story
              #:start (moment 2020 1 14 15)
              #:duration 1)


    ;Evening

    (schedule exercise
              #:start (moment 2020 1 14 16 30)
              #:duration 1)

    (schedule stripe->db:communication-poc
              #:start (moment 2020 1 14 18)
              #:duration 1
              #:data "Just ping mc-data with the webhook.  Or something that will talk to mc-data.")

    ))

(define jan-15-2020
  (list
    (schedule big-picture
              #:start (moment 2020 1 15 8 30)
              #:duration 0.5)

    (schedule time-management
              #:start (moment 2020 1 15 9)
              #:duration 0.5)

    (schedule meeting:all-hands 
              #:start (moment 2020 1 15 9 30)
              #:duration 1)


    (schedule backend:sketch-out-architecture 
              #:start (moment 2020 1 15 12)
              #:duration 0.5)

    (schedule break
              #:start (moment 2020 1 15 12 30)
              #:duration 0.5
              #:data "Get psyched to do more backend work")

    (schedule automated-training:breakdown:drive-training-automatically
              #:start (moment 2020 1 15 13)
              #:duration 1)



    (schedule exercise
              #:start (moment 2020 1 15 16 30)
              #:duration 1)

    (schedule stripe->db:database-prod
              #:start (moment 2020 1 14 18)
              #:duration 1)))

(define jan-16-2020
  (list


    (schedule big-picture
              #:start (moment 2020 1 16 8 30)
              #:duration 0.5)

    (schedule time-management
              #:start (moment 2020 1 16 9)
              #:duration 0.5)

    (schedule break
              #:start (moment 2020 1 16 12 30)
              #:duration 0.5
              #:data "Get psyched to do more backend work")

    (schedule exercise
              #:start (moment 2020 1 16 16 30)
              #:duration 1)

    (schedule stripe->db:database-prod
              #:start (moment 2020 1 16 18)
              #:duration 1)))

(define jan-17-2020
  (list

    (schedule big-picture
              #:start (moment 2020 1 17 8 30)
              #:duration 0.5)

    (schedule time-management
              #:start (moment 2020 1 17 9)
              #:duration 0.5)

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
    jan-13-2020
    jan-14-2020
    jan-15-2020
    jan-16-2020
    jan-17-2020
    jan-18-2020
    jan-20-2020
    jan-27-2020

    feb-1-2020
    ))



