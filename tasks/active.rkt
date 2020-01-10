#lang racket

(provide (all-defined-out))

(require (prefix-in w: website)
         pomodoro
         pomodoro/renderer
         "../tags.rkt")

(define meta-engine-hotswap-story
  (task "Meta-Engine hotswap: Document it.  Blog it.  Story mode it."
        work))


(define sara:next-tech-steps
  (task "Sara pair programming: Next tech steps"
        meeting
        work))

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

