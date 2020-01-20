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

(define current-year (make-parameter #f))
(define current-month (make-parameter #f))
(define current-day (make-parameter #f))

(define (good-weekday #:morning-activity
		      (morning-activity
			(schedule (task "Any")
				  #:start (at 7)
				  #:duration 0.5))
		      . events)
  (append
      (list
	(schedule shower
		  #:start (at 6)
		  #:duration 0.5)

	(schedule time-management
		  #:start (at 6 30)
		  #:duration 0.5)

	morning-activity


	(schedule lindsey-life-meeting
		  #:start (at 7)
		  #:duration 0.5)

	(schedule exercise
		  #:start (at 16 30)
		  #:duration 0.5))
      events))


(define-syntax-rule (date year month day stuff ...)
  (parameterize ([current-year year]
		 [current-month month]
		 [current-day day])

    stuff ...
    ))

(define (at hour (minute 0))
  (moment (current-year)
	  (current-month)
	  (current-day)
	  hour
	  minute))



(define jan-20-2020
  (date 2020 1 20
	(good-weekday #:morning-activity (schedule piano-practice
					      #:start (moment 2020 1 20 7)
					      #:duration 0.5)
		 (schedule time-management
			   #:start (at 8 30)
			   #:duration 0.5)

		 (schedule automated-training:log-progress-with-mona-and-emily-2
			   #:start (moment 2020 1 20 9)
			   #:duration 0.5)
		 )))

(define jan-21-2020
  (date 2020 1 21
	(good-weekday 
	  )))

(define jan-22-2020
  (date 2020 1 22
	(good-weekday
	  (schedule psych-meeting
		    #:start (moment 2020 1 22 11)
		    #:duration 1))
	))

(define jan-23-2020
  (date 2020 1 23
	(good-weekday
	  )))

(define jan-24-2020
  (date 2020 1 24
	(good-weekday
	  )))

(define jan-25-2020
  (date 2020 1 25
	(good-weekday
	  )))

(define jan-26-2020
  (date 2020 1 26
	(good-weekday
	  )))

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
    jan-20-2020
    jan-21-2020
    jan-22-2020
    jan-23-2020
    jan-24-2020
    jan-25-2020
    jan-26-2020
    jan-27-2020

    feb-1-2020
    ))



