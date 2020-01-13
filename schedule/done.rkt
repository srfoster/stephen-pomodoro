#lang racket

(provide past-events)

(require pomodoro
         "../calendar.rkt"
         gregor
         (prefix-in w: website/bootstrap)
         "../tasks.rkt")

(define jan-13-2020
  (list

    (schedule automated-training:log-progress-with-mona-and-emily-1
              #:start (moment 2020 1 13 9)
              #:duration 0.5)

    (schedule time-management
              #:start (moment 2020 1 13 10)
              #:duration 0.5)

    (schedule big-picture
              #:start (moment 2020 1 13 10)
              #:duration 0.5)

    (schedule meeting:sara
              #:start (moment 2020 1 13 10 30)
              #:duration 0.5
              #:data "Follow up re: Mona/Emily...")

    (schedule fix-pomo-calendar-months
              #:start (moment 2020 1 13 11)
              #:duration 0.5)


    (schedule tickets-from-mona-feedback
              #:start (moment 2020 1 13 11 30)
              #:duration 0.5)


    ))

(define jan-12-2020
  (list
    (schedule clear-space-on-cb
              #:start (moment 2020 1 12 12)
              #:duration 0.5)
    
    (schedule improve-calendar-ui-2
              #:start (moment 2020 1 12 12)
              #:duration 2.75)

    (schedule exercise
              #:start (moment 2020 1 12 15)
              #:duration 1)

    (schedule practice-piano
              #:start (moment 2020 1 12 19)
              #:duration 1
              #:data 
              (w:div
                (w:a w:href: "https://stephen-public-stuff.s3.amazonaws.com/First+Midi+Composition.band.zip"
                     "MIDI Thingy"))) 
    ))


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
    (schedule breakdown:stripe->db
              #:start (moment 2020 1 9 18 0)
              #:duration 1)
    ))

(define jan-10-2020
  (list

    (schedule morning-todos-jan-10-2020
              #:start (moment 2020 1 10 9)
              #:duration 0.5)

    (schedule fix-up-black-cbs
              #:start (moment 2020 1 10 9 30)
              #:duration 0.25)

    (schedule improve-calendar-ui-1
              #:start (moment 2020 1 10 9 45)
              #:duration 0.25)

    (schedule pomo-bug:something-not-removing
              #:start (moment 2020 1 10 10)
              #:duration 0.25)

    (schedule breakdown:online-tutoring-system
              #:start (moment 2020 1 10 10 15)
              #:duration 1)

    (schedule breakdown:tpes-training-process
              #:start (moment 2020 1 10 11 15)
              #:duration 1)

    (schedule automated-training:docker-db-poc
              #:start (moment 2020 1 10 12 15)
              #:duration 1.75)

    (schedule summer-curric-meeting-1
              #:start (moment 2020 1 10 14 0)
              #:duration 0.5)

    (schedule automated-training:docker-db-poc
              #:start (moment 2020 1 10 14 0)
              #:duration 1)

    ))

(define jan-11-2020
  (list

    (schedule set-up-midi-recording
              #:start (moment 2020 1 11 7 30)
              #:duration 0.5)
    ))




(define past-events 
  (append
    jan-9-2020
    jan-10-2020
    jan-11-2020
    jan-12-2020
    jan-13-2020))



