#lang racket

(provide (all-defined-out))

(require pomodoro
         "../tasks.rkt")

(define wednesday-jan-1-2020
  (list
    (pomo bring-ltm-back-up)
    (done bring-ltm-back-up)
    (pomo time-management-system)
    (done time-management-system)))


(define thurs-jan-2-2020
  (list
    (done refactor-this-file #:time 5)
    (done make-renderer #:time 15)
    (done display-today-tasks #:time 5)
    (done todays-list-jan-2-2020 #:time 1)

    (done formalize-tasks #:time 1) 
    (done task-data-field #:time 23)
    
    (pomo check-email-jan-2-2020 #:time 5)
    (pomo clockin-chip #:time 20)

    (pomo clockin-chip)

    (done clockin-chip #:time 10)
    (done fix-slow-cutscenes #:time 15)
    (done check-email-jan-2-2020 #:time 0)

    (done big-picture-meditation)

    (done read-saras-update #:time 5)
    (pomo write-stories #:time 20)

    (pomo write-stories)

    (pomo write-stories)

    (done can-we-split-up-stories?)

    (pomo write-stories)

    (pomo write-stories)

    (pomo write-stories)))

(define friday-jan-3-2020
  (list
    (done bootstrap-office-pomodoro)

    (done check-email-jan-3-2020 #:time 5)
    (done write-stories #:time 1)))



(define monday-jan-6-2020
  (list
    (done fix-slow-cutscenes) 
    (done prep-for-mona-training)

    (done if-active-task-hide-on-open-list #:time 15)

    (pomo test-optimizations-for-cutscene)

    (done test-optimizations-for-cutscene)

    (done email-week1-classmaps #:time 10)))

(define tuesday-jan-7-2020
  (list
    ;1
    (done morning-todos-jan-7-2020 #:time 13) 
    (pomo improve-pomo-system #:time 12) 

    ;2
    (pomo timesheets-broken #:time 1)
    (done improve-pomo-system #:time 15)

    ;3
    (done timesheets-broken #:time 15)
    (done check-email-jan-7-2020 #:time 2)

    ;4
    (done day-of-week-bug #:time 5)
    (pomo fix-broken-define-assets-from-packages) 

    ;5
    (done logo-meeting) 

    ;6
    (pomo meta-engine-hotswap)

    ;7
    (done fix-broken-define-assets-from-packages #:time 0) 
    (pomo meta-engine-hotswap)

    ;8
    (done meta-engine-hotswap) 

    ;9
    (done big-picture-jan-7-2020) 

    ;10
    (done taiwan-meeting #:time 22)
    (done get-wires #:time 8)))


(define wednesday-jan-8-2020
  (list
    ;1
    (done morning-todos-jan-8-2020 #:time 10)
    (pomo todos-to-calendar #:time 15)

    ;2
    (pomo todos-to-calendar)

    ;3
    (pomo todos-to-calendar)

    ;4
    (done hiring-meeting)

    ;5
    (done todos-to-calendar)

    ;6
    (done big-picture-jan-8-2020)

    ;7
    (pomo remove-define-icons-from)

    ;8
    (done remove-define-icons-from #:time 20)
    (pomo meta-engine-hotswap-story #:time 5)

    ;9
    (pomo meta-engine-hotswap-story)

    ;10
    (pomo meta-engine-hotswap-story)

    ;11
    (pomo meta-engine-hotswap-story)))

(define thursday-jan-9-2020
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
    
    ;Evening
    (pomo breakdown:stripe->db)
    (done breakdown:stripe->db)
    ))

(define friday-jan-10-2020
  (list
    ;1
    (pomo clear-space-on-cb)

    ;2
    (done morning-todos-jan-10-2020)
    (done fix-up-black-cbs)

    ;3
    (done improve-calendar-ui-1)

    ;4
    (done pomo-bug:something-not-removing
          #:time 10)
    (pomo breakdown:online-tutoring-system
          #:time 15)

    ;5
    (done breakdown:online-tutoring-system)
    (done breakdown:tpes-training-process)

    ;6
    ;(pomo automated-training:way-to-define-course-curric)

    ))


(define past-pomos
  (list 
    wednesday-jan-1-2020
    thurs-jan-2-2020
    friday-jan-3-2020
    monday-jan-6-2020
    tuesday-jan-7-2020
    wednesday-jan-8-2020
    thursday-jan-9-2020
    friday-jan-10-2020))


