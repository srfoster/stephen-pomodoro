#lang at-exp racket

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

(define time-management
  (task "Plan the day, plan the week, plan the month"
        meta
        work))



(define exercise
  (task "Exercise"
        #:data
        (w:div
          (w:p "Valid activities:")
          (w:ol 
            (w:li "Thinking about benefits of exercise.  Anything that mentally pumps you up.")
            (w:li "Moving body.")
            (w:li "Reflecting on movement of body.")
            (w:li "Reflecting on goals of body.")
            (w:li "Reflecting on recent exercise."))
          (w:p "Current routine:")
          (w:ol 
            (w:li "Jumping Jacks"))
          (list
            (w:p 
              'class: "codepen" 'data-height: "265" 'data-theme-id: "default" 'data-default-tab: "css,result" 'data-user: "LauraNK" 'data-slug-hash: "rxWLMy" 'style: "height: 265px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;" 'data-pen-title: "Tabata/workout timer")
            (w:script 'async: #t 'src: "https://static.codepen.io/assets/embed/ei.js"))

            
          )))


(define big-picture
  (task "Big picture meditation"
        #:data 
        (list
         (w:p "Are the tasks this day/month/week appropriate for the big picture?")
         (w:ul
          (w:li "Training people (teachers) online across the world")
          (w:li "Running courses for children across the world"))
         (w:p "End of week goal: Backend online, deployed.  Dev/prod.  Tracks courses, curriculum, and training."))
        work
        meta))


(define backend:sketch-out-architecture
  (task "Backend: Architecting"
        #:data 
        (w:div 
          (w:p "TODO: Make a big list of tickets.  Sort into milestones.  Figure out what to finish this week.  What's the minimum we need to do to help shed light on distributed teacher training's business logic?")
          (w:p "Anything that can be its own self-contained package should be.  A state machine for example?  Such packages should feel empowered to create their own database tables and seeds.  These should get pulled into the consuming pacakge's (e.g. mc-data's) db management flow.")
          (w:p "No micro-services.  Then again, it does make sense to have a self-contained service that is highly-focused on our data, it's associations, and the REST API.  We can build UI/front-end services on top of that")
          (w:ul
             (w:li "mc-data is just for JSON/S-Exp API?")
             (w:li "Minimal scaffolding")
             (w:li "Other services/apps can provide various 'views/lenses' on the data")
             (w:li "Document it like a REST API.  (NOTE: Is it cool that other developers could use the API?  Students, for example???)")
             (w:li "Security via 'roles' -- i.e. API keys.  Need way of defining security policies") ))
        work))

(define meeting:all-hands
  (task "Meeting: All hands"
        #:data "Announce change.  1-on-1 meetings?"
        work
        meta))


(define break
  (task "Break"))


(define unstructured
  (task "Unstructured"))


(define meeting:sara
  (task "Meeting: Sara"))

(define lindsey-life-meeting
  (task "Lindsey life story/game meeting"
        meta
        #:data "Play the best game while writing the best story.  How do you do so?  By playing the best game about playing the best game and writing the best story about writing the best story."))

(define drive-to-work
  (task "Drive to work"))
