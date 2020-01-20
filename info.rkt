#lang info
(define collection "stephen-pomodoro")
(define deps '("base"
	       "https://github.com/srfoster/pomodoro.git"
	       "https://github.com/thoughtstem/website-js.git"
	       ))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/stephen-pomodoro.scrbl" ())))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(thoughtstem))
