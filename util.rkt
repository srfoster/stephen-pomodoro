#lang racket

(provide good-weekday at day)

(require pomodoro
         "./calendar.rkt"
         gregor
         "./tasks.rkt")

(define current-year (make-parameter #f))
(define current-month (make-parameter #f))
(define current-day (make-parameter #f))

(define (good-weekday #:morning-activity
		      (morning-activity
			(schedule (task "Any")
				  #:start (at 7)
				  #:duration 0.5))
                      #:exercise 
		      (afternoon-exercise
			(schedule exercise
				  #:start (at 16 30)
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

        afternoon-exercise)
      events))


(define-syntax-rule (day year month day stuff ...)
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


