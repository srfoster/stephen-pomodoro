#lang racket

(provide (all-defined-out))

(require (prefix-in w: website)
         pomodoro
         pomodoro/renderer
         "../tags.rkt")

;TODO: Break this project into different files.
;  Automated tutoring system is also relevant to "Book 2" -- since that would be a series of engagements with the Maps/Stories/Games content (possibly with some early-stage writing/editing assignments to pave the way for Book 3)
;  All the while we want ways for them to update their story in their coach bio (from Book 1)

(define automated-training:docker-db-poc
  (task "Automated Training: Get a postgres/racket dev environment running in Docker"
        #:data "Value: A repo and basic framework on which to build the rest of the backend stuff..  [Test with: Emily/Monal TPES]"
        work))

(define automated-training:way-to-define-course-curric
  (task "Automated Training: Attach curriculum (and langs) to courses"
        #:data "Value: Paves the way to communicate with parents, students, and coaches via Classmaps/Sequences.  [Test with: Emily/Monal TPES]"
        work))

(define automated-training:way-to-attach-coaches-to-courses
  (task "Automated Training: Attaching coaches to courses"
        #:data "Value: Helps us know what maps/langs coaches should train on.  [Test with: Emily/Monal TPES]"
        work))

(define automated-training:way-to-define-training-milestones
  (task "Automated Training: For some coach, display what their training story ought to be."
        #:data "Value: Communicate with coaches what they must do.  They can display this on their coach bio...  [Test with: Emily/Monal TPES]"
        work))

(define automated-training:way-to-log-training-milestone-completion
  (task "Automated Training: For some coach, log the completion of some milestone."
        #:data "Value: Communicate with meta-coaches what their coach-students have done.  Communicate with coaches what their progress is.  They can display this on their coach bios.  [Test with: Emily/Monal TPES]"
        work))

(define automated-training:log-progress-with-mona-and-emily-1
  (task "Have 1st meeting with Mona and Emily.  Refine/use/improve training system"
        work))

(define automated-training:log-progress-with-mona-and-emily-2
  (task "Have 2nd meeting with Mona and Emily.  Refine/use/improve training system"
        work))

(define automated-training:log-progress-with-mona-and-emily-3
  (task "Have 3rd meeting with Mona and Emily.  Refine/use/improve training system"
        #:data "TODO: Schedule next in sequence if necessary."
        work))


(define automated-training:breakdown:drive-training-automatically
  (task "Automated Training: Drive training through email/slack/etc."
        #:data "Outgoing: Welcome emails, reminders about what to do, etc.  Incoming: Check assignments, auto 'grade', etc.  [Test with: Emily/Monal TPES]"
        breakdown
        work))




(define breakdown:make-1-new-summer-k2-clicker-lang
  (task "Make 1 new summer k2 clicker lang"
        breakdown
        work))


(define practice-piano
  (task "Practice piano"))


(define record-asl
  (task "Record ASL"))

(define mc-data:mvp
  (task "MC data MVP"
        #:data 
        (w:div
          (w:ol
            (w:li
              "A way for admins to create courses, coaches, curriculum, and various associations.")
            (w:li
              "Create a subset of actual/live data.")
            (w:li
              "A way for admins to log badges/milestones/progress/story for coaches in training (relative to various curriculum)")
            (w:li
              "A way to display a coach's story to them and the world")
            (w:li
              "A system into which we can put other models -- e.g. orders, enrollments, etc.")
            (w:li
              "Good docs and good tests, so admins can adapt to the changing needs of the business.")))
        work))


(define breakdown:online-courses
  (task "Breakdown online courses"
        work
        breakdown))




