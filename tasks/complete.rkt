#lang racket

(provide (all-defined-out))

(require pomodoro
         (prefix-in w: website)
         "../tags.rkt")

(define bring-ltm-back-up
  (task "Bring mod.learntomod.com back up"
        ltm))

(define time-management-system
  (task "Make better time management system"
        meta))

(define refactor-this-file
  (task "Refactor this file"
        meta))

(define make-renderer
  (task "Web renderer for tasks (complete and incomplete)"
        meta))

(define formalize-tasks
  (task "Formalize task lifecycle"
        meta))

(define display-today-tasks
  (task "Display today's tasks in renderer"
        meta))

(define task-data-field
  (task "Add data field to tasks -- web content."
        meta))

(define todays-list-jan-2-2020
  (task "Make today's list"
        meta
        todays-list))

(define fix-slow-cutscenes
  (task "Fix slow cutscenes, re: Sonny's email"
        #:data "Notes: Investigated.  Replied.  Background images make things slow.  Waiting for Sonny to tell me if we need to fix it."
        work))

(define clockin-chip
  (task "Add clockin chip next to clockin button"
        via-email
        work))

(define big-picture-meditation
  (task "Meditate on big picture.  Refocus after Christmas break."
        work
        big-picture))

(define check-email-jan-2-2020
  (task "Check email"
        email
        work))

(define bootstrap-office-pomodoro
  (task "Try Pomodoro in office"
        work
        meta))

(define check-email-jan-3-2020
  (task "Check email"
        work
        email))

(define read-saras-update
  (task "Read Sara's update"
        email
        work))

(define write-stories
  (task "Write 3 stories quickly."
        #:data "Get back in the habit of fluent/rapid content generation."
        writing
        work))

(define prep-for-mona-training 
  (task "Prep for mona training"
        work))

(define if-active-task-hide-on-open-list
  (task "If task is active, don't show it on the open list"
        work))

(define test-optimizations-for-cutscene
  (task "Deploy and test cutscene optimizations"
        work))

(define email-week1-classmaps
  (task "Email I/O classmaps to Emily and Mona.  Try to put cutscene docs online.  Try to put I/O classmaps online."
        work))
  
(define improve-pomo-system
  (task "Easier task management.  Adding to master list is annoying."
        work
        meta))

(define morning-todos-jan-7-2020
  (task "Morning todos"
        work
        email))

(define timesheets-broken
  (task "Fix timesheets"
        work))

(define check-email-jan-7-2020
  (task "Check email"
        work
        email))

(define day-of-week-bug
  (task "Request for instructor email populating date incorrectly.  New year bug?"
        work))

(define fix-broken-define-assets-from-packages
  (task "Fix broken packages, clicker-assets, animal-assets.  Test on travis."
        work))

(define logo-meeting
  (task "Meet about logos"
        meeting
        work))

(define taiwan-meeting
  (task "Meet with lindsey about Taiwan project"
        meeting
        work))

(define meta-engine-hotswap
  (task "Investigate meta-engine hotswapping"
        #:data
        (w:ul
          (w:li "Don't spend forever on this")
          (w:li "Stop when the story gets bad")
          (w:li "Focus on the lifechanging thing the tech will give us. (Makes meta-engine development an order of magnitude faster)")
          (w:li "Max 2 pomos today.  Don't want the project to become a death pit..."))
        work))

(define big-picture-jan-7-2020
  (task "Sketch the big picture"
        work))

(define morning-todos-jan-8-2020
  (task "Morning todos"
        meta
        work))

(define get-wires
  (task "Get wires"
        work))

(define hiring-meeting
  (task "Optimize hiring with Judith"
        work))

(define big-picture-jan-8-2020
  (task "Sketch the big picture (Jan 8)"
        work))

(define remove-define-icons-from
  (task "Travis metacoders-dot-org is breaking"
        #:data
        (w:ol
          (w:li "Pushed fixes to ts-kata-util #master -- no longer uses define-icons-from")
          (w:li "TODO: See that metacoders-dot-org Travis is fixed"))
        work))

(define todos-to-calendar
  (task "TODOs to calendar."
        #:data
        (w:ol
          (w:ul "Event struct?")
          (w:ul "Assign todos to events?")
          (w:ul "Assign pomos to events?"))
        meta
        work))

(define fix-calendar-dates
  (task "Fix calendar dates: Use gregor to populate the days?"
        meta
        work))

(define can-we-split-up-stories?
  (task "Figure out how to split up Debugging a Pizza across multiple classmaps..."
        writing
        work))

(define morning-todos-jan-9-2020
  (task "Jan 9: Morning todos"
        work
        meta))

(define put-all-tasks-on-calendar
  (task "All open tasks should get scheduled"
        #:data 
        (w:ul
          (w:li "Consider making a way to detect unscheduled tasks...")
          (w:li "Mark (or remove?) scheduled-but-completed tasks"))
        work
        meta))

(define edit-stories
  (task "Edit classmaps."
        #:data
        "Breakdown: Revisit debugging a pizza.  Simplify the classmaps output.  Generally rethink the TPES stories and story production in general."
        editing
        breakdown
        work))

(define jan-9-2020-take-break-1
  (task "Take a break"
        #:data "When to Judy's.  And a BLT.  Meditated a bit."
        break))

(define mc-classmaps-tickets
  (task "Cleanup classmaps and make them a better comm tool."
        #:data
        "Breakdown: Revisit debugging a pizza.  Simplify the classmaps output.  Generally rethink the TPES stories and story production in general."
        editing
        breakdown
        work))

(define sara:next-tech-steps
  (task "Sara pair programming: Next tech steps"
        meeting
        work))

(define improve-calendar-ui-1
  (task "Make calendar more useable"
        #:data "Colors?  Smaller buttons.  Better time layout.  Etc."
        work
        meta))

(define breakdown:tpes-training-process
  (task "Create tasks for how the 1st draft of the automated tutoring system will be used to deliver trained coaches for TPES (Emily and Mona)"
        #:data "Includes: Do new draft of classmaps page, to reflect our communication with E&M"
        work
        breakdown))

(define breakdown:online-tutoring-system
  (task "Create tasks for automated online tutoring system"
        work
        breakdown))

(define redo-task-wall
  (task "Redo task wall"
        #:data "Really an excuse to: Intro pomodoro game to office; Refactor teams"
        meta
        work))
