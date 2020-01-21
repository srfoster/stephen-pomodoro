#lang at-exp racket

;Random:
;  * Personal wikipedia pages


(provide future-events)

(require pomodoro
         "./calendar.rkt"
         "./util.rkt"
         gregor
         (prefix-in w: website/bootstrap)
         "./tasks.rkt"
         "./schedule/past.rkt")

(define jan-21-2020
  (day 2020 1 21
       (good-weekday 
	 #:morning-activity
	 (schedule walk
		   #:start (at 7)
		   #:duration 0.5
		   #:data "Walk in rain.")

	 (schedule mc-data:mvp
		   #:start (at 9)
		   #:duration 0.5
		   #:data "Put up /our-coaches.html page.  Pull in data -> Number of badges?  Level?  Some kind of abstraction over the coach training story.  Add the real data for office staff + emily + mona")


	 (schedule mc-data:mvp
		   #:start (at 9)
		   #:duration 3
		   #:data "Finish: Stripe integration")

	 (schedule mc-data:mvp
		   #:start (at 12)
		   #:duration 4
		   #:data "Document all the things so far")

	 )))

(define jan-22-2020
  (day 2020 1 22
	(good-weekday
	 (schedule mc-data:mvp
		   #:start (at 9)
		   #:duration 2
		   #:data "Task records.  Basic state machine: done or not done.  Unit tests.")

	  (schedule psych-meeting
		    #:start (at 11)
		    #:duration 1)
	  
	 (schedule mc-data:mvp
		   #:start (at 12)
		   #:duration 1
		   #:data "Where to keep mail templates?  Make order receipt email template template.")

	 (schedule mc-data:mvp
		   #:start (at 13 30)
		   #:duration 0.5
		   #:data "Mailing lists, people, templates, etc (Everything except scheduling jobs.)")

	 (schedule mc-data:mvp
		   #:start (at 14 30)
		   #:duration 1
		   #:data "Make task/chron system -- like Sidekiq.  Add to docker.  Allow dev/prod configuration")

	 (schedule mc-data:mvp
		   #:start (at 15 30)
		   #:duration 0.5
		   #:data "Send email via mailgun or whatever.  Make sure emails don't send in dev env.")

	 (schedule breakdown:online-courses
		   #:start (at 14 30)
		   #:duration 2.5
		   #:data "Write some scripts that I can go home and record.")
	  )
	))

(define jan-23-2020
  (day 2020 1 23
	(good-weekday
	  )))

(define jan-24-2020
  (day 2020 1 24
	(good-weekday
	  )))

(define jan-25-2020
  (day 2020 1 25
	(good-weekday
	  )))

(define jan-26-2020
  (day 2020 1 26
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
    jan-21-2020
    jan-22-2020
    jan-23-2020
    jan-24-2020
    jan-25-2020
    jan-26-2020
    jan-27-2020

    feb-1-2020
    ))



