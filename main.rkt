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
    (define year (->year date))
    (define month (->month date))
    (define day (->day date))

    (define (maybe-data m)
      (define overlapping (filter (curry overlaps-with? m) events))

      (if (empty? overlapping)
        #f
        (scheduled-data (first overlapping))))

    (define (maybe-pad m)
      (define overlapping (filter (curry overlaps-with? m) events))

      (if (empty? overlapping)
        pad
        (scheduled-task (first overlapping))))
    
    (define (maybe-renderer m)
      (define overlapping (filter (curry overlaps-with? m) events))

      (if (empty? overlapping)
        badge-pill-light
        (scheduled-renderer (first overlapping))))

    (define (schedule-pad hour (minute 0))
      (define m (moment year month day hour minute))
      (define m:30 (moment year month day hour 30))

      (list
        (schedule (maybe-pad m)
                  #:start m
                  #:duration 0.5
                  #:data (maybe-data m)
                  #:renderer (maybe-renderer m))
        (schedule (maybe-pad m:30)
                  #:start m:30 
                  #:duration 0.5
                  #:data (maybe-data m:30)
                  #:renderer (maybe-renderer m:30))))

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

(render #:to "out"
        (bootstrap
          (page index.html
                (content
                  
                    (tabify
                      (active-tab-nav-link href: "#future" "Future")
                      (tab-nav-link href: "#past" "Past")

                      (active-tab-pane id: "future"
                        (task-calendar 
                          (event-pad future-events)
                          '()))
                      (tab-pane id: "past"
                        (task-calendar 
                          (event-pad past-events )
                          '())))))))


