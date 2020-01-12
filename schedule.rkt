#lang racket

(provide future-events)

(require pomodoro
         "./calendar.rkt"
         gregor
         (prefix-in w: website/bootstrap)
         "./tasks.rkt"
         "./schedule/past.rkt")


(define jan-12-2020
  (list
    
    (schedule improve-calendar-ui-2
              #:start (moment 2020 1 12 12)
              #:duration 0.5)

    (schedule exercise
              #:start (moment 2020 1 12 13)
              #:duration 1)

    (schedule stripe->db:communication-poc
              #:start (moment 2020 1 12 18)
              #:duration 1)

    (schedule practice-piano
              #:start (moment 2020 1 12 19)
              #:duration 1
              #:data 
              (w:div
                (w:a w:href: "https://stephen-public-stuff.s3.amazonaws.com/First+Midi+Composition.band.zip"
                     "MIDI Thingy"))) 
    (schedule record-asl
              #:start (moment 2020 1 12 20)
              #:duration 1)

    ))

(define jan-13-2020
  (list
    (schedule breakdown:make-1-new-summer-k2-clicker-lang
              #:start (moment 2020 1 13 8 30)
              #:duration 0.5)

    (schedule redo-task-wall
              #:start (moment 2020 1 13 8 30)
              #:duration 0.5)

    (schedule automated-training:log-progress-with-mona-and-emily-1
              #:start (moment 2020 1 13 9)
              #:duration 0.5)

    (schedule fix-pomo-calendar-months
              #:start (moment 2020 1 13 10)
              #:duration 0.5)

    (schedule tickets-from-mona-feedback
              #:start (moment 2020 1 13 11)
              #:duration 0.5)

    (schedule write-writer-guidelines
              #:start (moment 2020 1 13 12 30)
              #:duration 1)

    (schedule edit-stories
              #:start (moment 2020 1 13 10)
              #:duration 1)

    (schedule meta-engine-hotswap-story
              #:start (moment 2020 1 13 13 30)
              #:duration 1)
    
    (schedule automated-training:breakdown:drive-training-automatically
              #:start (moment 2020 1 13 14 30)
              #:duration 1)

    (schedule stripe->db:database-poc
              #:start (moment 2020 1 13 18)
              #:duration 1)

    ))

(define jan-14-2020
  (list

    (schedule automated-training:way-to-define-course-curric
              #:start (moment 2020 1 14 11 30)
              #:duration 1)

    (schedule automated-training:way-to-attach-coaches-to-courses
              #:start (moment 2020 1 14 12 30)
              #:duration 1)

    (schedule automated-training:way-to-define-training-milestones
              #:start (moment 2020 1 14 13 30)
              #:duration 0.5)


    (schedule automated-training:way-to-define-training-milestones
              #:start (moment 2020 1 14 14 30)
              #:duration 0.5)

    (schedule automated-training:way-to-log-training-milestone-completion
              #:start (moment 2020 1 14 15)
              #:duration 0.5)

    ;Evening
    (schedule stripe->db:database-prod
              #:start (moment 2020 1 14 18)
              #:duration 1)
    ))

(define jan-15-2020
  (list
    (schedule stripe->db:database-prod
              #:start (moment 2020 1 15 18)
              #:duration 1)))

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



(define future-events 
  (append
    jan-12-2020
    jan-13-2020
    jan-14-2020
    jan-15-2020
    jan-20-2020
    jan-27-2020
    ))



