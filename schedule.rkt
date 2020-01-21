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

(define jan-20-2020
  (day 2020 1 20
        (good-weekday 
          #:exercise (schedule exercise
                               #:start (at 16 30)
                               #:duration 0.5
                               #:data @w:paras{
                                 5 minute run??
                                 Did it!

                                 TODO: Learn all the landmarks.  Mind palace the route(s).
                                 * Learn to integrate inner thoughts with awareness of surroundings -> Recall thoughts later. 
                                 
                                 If you don't know what to think about.  Think about love.

                                 Is coding the art of making thoughts precise?  Or is it the process of giving us tools to figure out what our thoughts are?

                                 System stories?  Soft skills stories.
                                 

                               })


          (schedule mc-data:mvp
                    #:start (at 11 30)
                    #:duration 0.5
                    #:data "Secure the data... Put up /our-coaches.html page.  Pull in data -> Number of badges?  Level?  Some kind of abstraction over the coach training story.  Add the real data for office staff + emily + mona")


          (schedule mc-data:mvp
                    #:start (at 12)
                    #:duration 0.5
                    #:data "Research. Secure Stripe webhook...")

          (schedule mc-data:mvp
                    #:start (at 12 30)
                    #:duration 0.5
                    #:data "Implement. Secure Stripe webhook -> order records in db.  Customer identities.")


          (schedule mc-data:mvp
                    #:start (at 13)
                    #:duration 0.5
                    #:data "Task records.  Basic state machine: done or not done.  Unit tests.")

          (schedule mc-data:mvp
                    #:start (at 13 30)
                    #:duration 0.5
                    #:data "Where to keep mail templates?  Make order receipt email template.")

          (schedule mc-data:mvp
                    #:start (at 14)
                    #:duration 0.5
                    #:data "Mail tasks.  Send email via mailgun or whatever.  Make sure emails don't send in dev env.")

          (schedule breakdown:online-courses
                    #:start (at 14 30)
                    #:duration 2.5
                    #:data "Write some scripts that I can go home and record.")

          (schedule (task "Recording")
                    #:start (at 18)
                    #:duration 2.5
                    #:data 
                    @w:paras{
                      Topics to start with...

                      Boring learn to code videos...
                      Stop coding before you hurt yourself

                      To cut from...
                      https://www.youtube.com/watch?v=elfGmSxVhBQ
                      https://www.youtube.com/watch?v=LCls16Tv8UE
                      https://www.youtube.com/watch?v=VFH15wbUOiY
                      https://www.youtube.com/watch?v=YBYmhWlk8o4
                      https://www.youtube.com/watch?v=R2pIutTspQA
                      https://www.youtube.com/watch?v=WKuNWrxuJ9g
                      https://www.youtube.com/watch?v=RRubcjpTkks
                      https://www.youtube.com/watch?v=tCAt8eEKPDc
                      https://www.youtube.com/watch?v=hb7Q33ysCwI

                      
                      Meta topics.... How I made this video...

                      Learning sciences...

                      Language learning + coding  
                      Spaced repetition 
                      Lisp 
                    }) 

          )))

(define jan-21-2020
  (day 2020 1 21
	(good-weekday 
          (schedule mc-data:mvp
                    #:start (at 9)
                    #:duration 0.5
                    #:data "Document all the things")

          )))

(define jan-22-2020
  (day 2020 1 22
	(good-weekday
	  (schedule psych-meeting
		    #:start (moment 2020 1 22 11)
		    #:duration 1))
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



