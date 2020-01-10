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


(define breakdown:tpes-training-process
  (task "Create tasks for how the 1st draft of the automated tutoring system will be used to deliver trained coaches for TPES (Emily and Mona)"
        #:data "Includes: Do new draft of classmaps page, to reflect our communication with E&M"
        work
        breakdown))



(define mc-classmaps-tickets-2
  (task "Cleanup classmaps and make them a better comm tool."
        #:data
        "Breakdown: Revisit debugging a pizza.  Simplify the classmaps output.  Generally rethink the TPES stories and story production in general."
        extension
        editing
        breakdown
        work))

(define breakdown:online-tutoring-system
  (task "Create tasks for automated online tutoring system"
        work
        breakdown))


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


