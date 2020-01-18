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
  (list))


(define all-pomos (append pomos past-pomos))

(require pomodoro/calendar 
         "./schedule.rkt"
         "./schedule/done.rkt"
         website-js)

(require gregor)

(define pad (task ""))
(define (event-pad events)

  (define (pad-date date)
    (displayln (~a "Generating date " date))
    (define year (->year date))
    (define month (->month date))
    (define day (->day date))

    (define (maybe-data m overlapping)
      (if (empty? overlapping)
        #f
        (scheduled-data (first overlapping))))

    (define (maybe-pad m overlapping)
      (if (empty? overlapping)
        pad
        (scheduled-task (first overlapping))))
    
    (define (maybe-renderer m overlapping)

      (if (empty? overlapping)
        badge-pill-light
        (scheduled-renderer (first overlapping))))

    (define (maybe-schedule m)
      (define overlapping (filter (curry overlaps-with? m) events))

      (schedule (maybe-pad m overlapping)
                #:start m
                #:duration 0.5
                #:data (maybe-data m overlapping)
                #:renderer (maybe-renderer m overlapping)))

    (define (schedule-pad hour (minute 0))
      (define m (moment year month day hour minute))
      (define m:30 (moment year month day hour 30))

      (list
        (maybe-schedule m)
        (maybe-schedule m:30)))

    (define (pad-hours from to)
      (map schedule-pad (range from to)))

    (flatten (pad-hours 7 21)))

  (define (moment->date m)
    (date
      (->year m)
      (->month m)
      (->day m)))

  (define dates
    (remove-duplicates
      (map moment->date
           (map scheduled-start events))
      date=?))

  (flatten
    (map pad-date dates)))

(displayln (~a "Making page-content for " (length future-events) " future events and " (length past-events) " past events"))

(define page-content
  (content

    (tabify
      (active-tab-nav-link href: "#future" "Future")
      (tab-nav-link href: "#past" "Past")

      (active-tab-pane id: "future"
                       (task-calendars
                         (event-pad future-events)))
      (tab-pane id: "past"
                (task-calendars
                  (event-pad past-events ))))))


(displayln "Rendering page")

(render #:to "out"
        (bootstrap
          (page index.html
                page-content)))


