#lang racket

(provide (all-defined-out))

(require pomodoro
         pomodoro/renderer
         (prefix-in w: website)
         "../tags.rkt")

(define big-picture-jan-9-2020
  (task "Sketch the big picture"
        #:data "Consider online courses and how that fits into the long term plan"
        work))



(define mc-classmaps-tickets-2
  (task "Cleanup classmaps and make them a better comm tool."
        #:data
        "Breakdown: Revisit debugging a pizza.  Simplify the classmaps output.  Generally rethink the TPES stories and story production in general."
        extension
        editing
        breakdown
        work))



(define write-writer-guidelines
  (task "Make writer's guidelines"
        work))

(define redo-task-wall
  (task "Redo task wall"
        #:data "Really an excuse to: Intro pomodoro game to office; Refactor teams"
        meta
        work))

(define breakdown:email-flows 
  (task "Breakdown: Email flows.  Generic workflow language tech."
        #:data "Useful for HR (hiring), training (facilitates online coures), and marketing (ping these customers, etc...)"
        meta
        work))


(define fix-pomo-calendar-months
  (task "Pomo calendar is broken.  Jan 1 event shows up in Feb"
        work))


(define improve-calendar-ui-2
  (task "Make calendar more useable"
        #:data "Colors?  Smaller buttons.  Better time layout.  Etc."
        work
        meta))


(define breakdown:training-content-creation-todos
  (task "Training content.  Breakdown"
        #:data "Organization of mc-classmaps.  Schedule book1, book2, book3 creation."
        breakdown
        work))

(define breakdown:training-delivery-system-todos
  (task "Training delivery.  Breakdown"
        #:data "Start a system for tracking people.  Document.  Make further TODOs.  Figure out how it links to training content."
        breakdown
        work))

(define meta-engine-hotswap-story
  (task "Meta-Engine hotswap: Document it.  Blog it.  Story mode it."
        work))

(define clear-space-on-cb
  (task "Clear space: Need more Gigs"))

(define morning-todos-jan-10-2020 
  (task "Morning todos"
        work
        meta))

(define fix-up-black-cbs
  (task "Put black CBs back into normal state"
        work))


(define breakdown:stripe->db
  (task "Stripe to DB: Breakdown"
        #:data "Capture webhooks.  Dockerize thigns.  Racket webserver, microservice."
        work))


(define stripe->db:communication-poc
  (task "Stripe to DB: End to end spike"
        #:data "Trigger a stripe webhook, catch it in a Racket server, all inside a docker container."
        work))


(define stripe->db:database-poc
  (task "Stripe to DB: Add db"
        #:data "Put data into a local SQLite db.  Get the schema right."
        work))

(define stripe->db:database-prod
  (task "Stripe to DB: DB in separate Docker"
        #:data "Move to postgress.  Separate DB from server."
        work))

(define summer-curric-meeting-1
  (task "Meet about summer curric"
        work
        meeting))

(define set-up-midi-recording
  (task "Set up MIDI recording" ))

(define pomo-bug:something-not-removing
  (task "Pomo bug: (done ...) not removing a scheduled item."
        meta))


(define tickets-from-mona-feedback
  (task "Look at Mona Feedback notes.  Create tickets."
        work))



(define exercise
  (task "Exercise"))



