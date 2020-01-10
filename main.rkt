#lang racket

(require pomodoro
         pomodoro/renderer
         "./pomos/main.rkt"
         "./tasks.rkt")

;Organize this.
;Pick tasks for today
;Check emails.
;How to deal with recurring tasks? 
;  Check email
;  Do big picture meditation
;  Set day's TODO list
;  Refactor current file

(define pomos
  (list
    ;0
    (done morning-todos-jan-9-2020)

    ;1
    (pomo fix-calendar-dates)

    ;2
    (done fix-calendar-dates #:time 16)
    (pomo put-all-tasks-on-calendar #:time 9)

    ;3
    (done can-we-split-up-stories? #:time 1)
    (done put-all-tasks-on-calendar #:time 8)

    ;4
    (done big-picture-jan-9-2020)

    ;5
    (done sara:next-tech-steps)

    ;6
    (done edit-stories)

    ;7
    (done jan-9-2020-take-break-1)

    ;8
    (pomo mc-classmaps-tickets)

    ;9
    (done mc-classmaps-tickets)

    ;10
    (done mc-classmaps-tickets-2)

    ;11
    (done mc-classmaps-tickets-2)

    ))


(define all-pomos (append pomos past-pomos))

(require pomodoro/calendar 
         "./schedule.rkt"
         website-js)

;How to map pomos to events???

(render #:to "out"
        (bootstrap
          (page index.html
                (content
                  (container 
                    (task-calendar 
                      events 
                      all-pomos))
                  (task-list-container
                    main-list
                    all-pomos)))))



