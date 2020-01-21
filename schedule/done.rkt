#lang at-exp racket

(provide past-events)

(require pomodoro
         "../calendar.rkt"
         "../util.rkt"
         gregor
         (prefix-in w: website/bootstrap)
         "../tasks.rkt")

(define jan-20-2020
  (day 2020 1 20
	(good-weekday 
	  #:morning-activity (schedule piano-practice
				       #:start (moment 2020 1 20 7)
				       #:duration 0.5)
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

	  (schedule time-management
		    #:start (at 8 30)
		    #:duration 0.5
		    #:data @w:paras{
		    * Clean up papers   
		    * Consolidate backend todos
		    - Badges finished?  Course page finalize?
		    - Set up db
		    - data.metacoders.org
		    - Collect stripe webook -> email receipts.  Protected backend views...  Protected db...
		    })

	  (schedule automated-training:log-progress-with-mona-and-emily-2
		    #:start (moment 2020 1 20 9)
		    #:duration 0.5)

	  (schedule mc-data:mvp
		    #:start (at 9 30)
		    #:duration 2.5
		    #:data "Get the production db set up")

	  (schedule mc-data:mvp
		    #:start (at 12)
		    #:duration 0.5
		    #:data "Research. Secure Stripe webhook...")

	  (schedule mc-data:mvp
		    #:start (at 12 30)
		    #:duration 3.5
		    #:data "Started: Secure Stripe webhook -> order records in db.  Customer identities.")

          (schedule online-courses
                    #:start (at 17 30)
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

	  (schedule practice-piano 
		    #:start (at 20)
		    #:duration 1)

	  )))

(define jan-19-2020
  (list

    (schedule exercise
              #:start (moment 2020 1 19 14 30)
              #:duration 0.5
              #:data @w:paras{
                 New resolution.  Run daily.  At least 5 minutes.
                   - ___ is fine, if you run after.
                   - Excuses are fine, if you do them and run immediately after.             
                   - Excuses that prevent running are suspect

                 After run.  Write down idea notes.
                 - Positive self thoughts 
                 - Good better best
                 - Loving kindness meditation

              }
	      )

    (schedule time-management
              #:start (moment 2020 1 19 15 30)
              #:duration 0.5
              #:data @w:paras{
	        Decided to start enforcing the wakeup routine and the after work routine.
              })

    ))


(define jan-18-2020
  (list
    (schedule (task "Unstructured")
              #:start (moment 2020 1 18 6 0)
              #:duration 14
              #:data "???")))

(define jan-17-2020
  (list
    (schedule time-management
              #:start (moment 2020 1 17 8 30)
              #:duration 0.5)

    (schedule mc-data:mvp
              #:start (moment 2020 1 17 9)
              #:duration 0.5)

    (schedule breakdown:online-courses
              #:start (moment 2020 1 17 9 30)
              #:duration 0.5
              #:data @w:paras{
                Small project.
                Series of ~5x5-minute videos on of coding/learning topics.  
                  * Progression: How optimized can a 5x5 throughput be?

                
                First set.  Title? "How not to learn to code"
                  1) Introduction.  Weird course...
                      Todo: Write script.
                  2) Why code can't teach you to code...  Looking at Codecademy, Treehouse, etc...
                  3) The language wars.  Which one to learn??
                  4) Language learning.  Concepts.  Etc.
                  5) Code for YOU!  Don't do it for someone else. :)

              })

    (schedule mc-data:mvp
              #:start (moment 2020 1 17 10)
              #:duration 0.5
              #:data @w:paras{
                TODO:
                  Get finder tests to pass. 
                  Add all office people seeds.  
                  Make coach identity
                     Write, people <-> identity tests
                  Attach associated data, e.g. badges...
              })


    (schedule breakdown:online-courses
              #:start (moment 2020 1 17 10 30)
              #:duration 0.5
              #:data @w:paras{
                Introduction:
 
                [Open on boring screen cast...] The first thing we're going to do is download a programming language, and write a "Hello, World--"


                [Cut to stephen] Hello world!  No! The first thing we're doing in this course is NOT downloading a programming language, and it's NOT to write a hello world program.   

                <<??>>

                <start brag> Let's get serious for 10 seconds.  I've been coding for 30 years.  I've been a fullstack webdeveloper for 15 years.  I have a bachelors, masters, and Ph.D. in computer science.  I run a company ... </end brag>

                [Jump cut...]  Sooooo boring.  That guy talks too much if you ask me.

                Let's jump right in by taking a look at the top 3 reasons people who jump right in... fail.

                [Insert some kind of epic fail meme.]

                Reason #1.  They think they know what coding is, but they don't. ["They don't" Stamp]
                Reason #2.  They think they know why the want to learn to code, but they don't.  ["They don't" Stamp]
                Reason #3.  They think they know how to learn to code, but they don't.  ["They don't" Stamp]


                The 5 videos in this series (starting with this one) will try to <<answer those questions.>>

                And guess what? [Drum roll...] We're going to answer them with stories...  So don't download any software.  Don't write "Hello, World".  Just sit back... and listen.

                [Disolve into a story...]

                Yep.  That dude from the early 90s is me.  And yes, I am playing a Star Trek game.
              })


    (schedule mc-data:mvp
              #:start (moment 2020 1 17 11)
              #:duration 1
              #:data @w:paras{
                Add higher level logic 
                Find real world project: People, badges, etc?
                Start porting old models?  Timesheets, touchdowns, etc? (Ummm. no...)

                Coaches/badges/curriculum/courses...

                TODO: (EOD) Deploy this somewhere that it can start providing value -> Coach bios on metacoders.org...
                  * Can track office staff going through training, making coach stories, etc...
              })

    (schedule meeting:sara
              #:start (moment 2020 1 17 12)
              #:duration 0.5
              #:data @w:paras{
                Met about (moblie) UI friction on mc-classmaps.
                Sara will open 2 tickets.
                Agreeed: Focus is on content creation now, though.
              })

    (schedule break
              #:start (moment 2020 1 17 12 30)
              #:duration 0.5
              #:data "Get psyched to do more backend work")


    (schedule mc-data:mvp
              #:start (moment 2020 1 17 13)
              #:duration 3
              #:data @w:paras{
                Coaches/badges/curriculum/courses...

                TODO: (EOD) Deploy this somewhere that it can start providing value -> Coach bios on metacoders.org...
                  * Can track office staff going through training, making coach stories, etc...
              })

   
    (schedule (task "Buy computer")
              #:start (moment 2020 1 17 16)
              #:duration 1.5)

    (schedule (task "Set up computer")
              #:start (moment 2020 1 17 17 30)
              #:duration 1.5)

    (schedule asl-meetup
              #:start (moment 2020 1 17 19)
              #:duration 1)

    (schedule piano-practice
              #:start (moment 2020 1 17 20)
              #:duration 1)
 
  ))


(define jan-16-2020
  (list
    (schedule mc-data:mvp
              #:start (moment 2020 1 16 9 0)
              #:duration 7
              #:data "Backend stuff.  I created this record on Jan 20, and I can't quite remember what I did.  But it was a pretty solid workday.  And I did finish off the next day (Friday) with a working MVP prototype, as planned -- mostly deployed...")

    (schedule (task "???")
              #:start (moment 2020 1 16 16 30)
              #:duration 4.5
              #:data "???")

    ))


(define jan-15-2020
  (list
    (schedule big-picture
              #:start (moment 2020 1 15 8 30)
              #:duration 0.5)

    (schedule meeting:all-hands 
              #:start (moment 2020 1 15 9 30)
              #:duration 1)

    (schedule mc-data:mvp
              #:start (moment 2020 1 15 10 30)
              #:duration 2
              #:data "Sketch out architecture")

    (schedule break
              #:start (moment 2020 1 15 12 30)
              #:duration 0.5
              #:data "Get psyched to do more backend work")

    (schedule mc-data:mvp
              #:start (moment 2020 1 15 13)
              #:duration 3
              #:data "Can we have a coach story service live by EOD?")

    (schedule exercise
              #:start (moment 2020 1 15 16 30)
              #:duration 0.5
              #:data "Book idea: Getting Shit Done While High.  Secrets of Cognitive Science for Potheads")

    (schedule unstructured
              #:start (moment 2020 1 15 17)
              #:duration 1)
    
    (schedule !!!
              #:start (moment 2020 1 15 18)
              #:duration 0.5
              #:data "Pre Lindsey leaving for her class")

    (schedule time-management
              #:start (moment 2020 1 15 18 30)
              #:duration 0.5
              #:data "TODO: Schedule online course creation.  Me vlogging on simple approachable everyday topics.")

    (schedule breakdown:online-courses
              #:start (moment 2020 1 15 19)
              #:duration 0.5
              #:data @w:paras{
               Online Courses that provide maximal value to MetaCoders...
                 Staring... me!

                 @w:b{Time management strategy}

                 Time during the day for recording? 
                 Is it a full pivot to content production? 
                 Or is it a wishy washy half-focus?
                 It depends on if the backend stuff can be done quickly...
                    Or if it can be done simultaneously...
                      * Our actual business stories can generate material for the course?


                 Anyway, it requires doing minimal work on the backend.  Don't build interfaces or tools that aren't necessary.
                    Solve a real problem with it all ASAP
                    TODO: List out the problems that we can solve right now with the software as is...   
                       -> Automatic enrollments
                       -> Employee tracking.  Hours.  Timesheets.  Etc.
                       -> Teacher training.   
                       -> Slackbot stuff.
                    And schedule them!  Ask people at work to help with that.
                    Have a data modeling session.
                    Film it all...

                 
                 Pieces missing, which (I think!) we'll need for various stories: Mailer, JSON api, deployment, way for  
                 But the real truth is in the actual usages of mc-data in the short term.  


                 You can back-burner mc-data, but you can't back-burner the backend projects.  It's your responsibility (to yourself and others) to keep the crank of automation moving.


                 Maybe we split the focus.  Like I'm doing now.  Evening project becomes... online courses.  I worked diligently on the book.  Now is about the time of year to be picking up a new long-term project.  Crank out those courses buddy!

                 4:30 - 5:30 Exercise
                 5:30 - 7/8/9 - Get famous on Udemy/Youtube.  Become a fantastic writer in a new medium.  Vlogging :)  I suspect this would open up thousands of doors...
                    (Recursive, nested, meta videos.  Pullback and discus...)


                 If there's not a lot of backend work, I can schedule in more videography and vice versa.  But I'll shoot for 50/50.

                 Can loop in Lindsey -- she learns in the evening.  Maybe record our sessions.


              })
    ))


(define jan-14-2020
  (list
    (schedule lindsey-life-meeting
              #:start (moment 2020 1 14 7 30)
              #:duration 0.5)

    (schedule big-picture
              #:start (moment 2020 1 14 8 30)
              #:duration 0.5)

    (schedule time-management
              #:start (moment 2020 1 14 9)
              #:duration 0.5)

    (schedule backend:sketch-out-architecture 
              #:start (moment 2020 1 14 9)
              #:duration 0.5)

    (schedule mc-data:mvp
              #:start (moment 2020 1 14 9 30)
              #:duration 2.5)

    (schedule breakdown:make-1-new-summer-k2-clicker-lang
              #:start (moment 2020 1 14 12)
              #:duration 0.5)

    (schedule break
              #:start (moment 2020 1 14 12 30)
              #:duration 0.5
              #:data "Get psyched up to finish off the editing stuff below")
    
    (schedule mc-data:mvp
              #:start (moment 2020 1 14 13)
              #:duration 4)

    (schedule shower
              #:start (moment 2020 1 14 17)
              #:duration 0.5)
    
    (schedule mc-data:mvp
              #:start (moment 2020 1 14 18)
              #:duration 1)

    (schedule time-management
              #:start (moment 2020 1 14 19)
              #:duration 0.5)

    (schedule shut-up-and-code
              #:start (moment 2020 1 14 19)
              #:duration 1)
    ))

(define jan-13-2020
  (list
    (schedule lindsey-life-meeting
              #:start (moment 2020 1 13 7 30)
              #:duration 0.5)

    (schedule drive-to-work
              #:start (moment 2020 1 13 8)
              #:duration 0.5)

    (schedule (task "Read Paul Graham essay.  Start working on todos")
              #:start (moment 2020 1 13 8 30)
              #:duration 0.5)

    (schedule automated-training:log-progress-with-mona-and-emily-1
              #:start (moment 2020 1 13 9)
              #:duration 0.5)

    (schedule time-management
              #:start (moment 2020 1 13 9 30)
              #:duration 0.5)

    (schedule big-picture
              #:start (moment 2020 1 13 10)
              #:duration 0.5)

    (schedule meeting:sara
              #:start (moment 2020 1 13 10 30)
              #:duration 0.5
              #:data "Follow up re: Mona/Emily...")

    (schedule fix-pomo-calendar-months
              #:start (moment 2020 1 13 11)
              #:duration 0.5)

    (schedule tickets-from-mona-feedback
              #:start (moment 2020 1 13 11 30)
              #:duration 0.5)

    (schedule backend:sketch-out-architecture 
              #:start (moment 2020 1 13 12)
              #:duration 0.5)

    (schedule break
              #:start (moment 2020 1 13 12 30)
              #:duration 0.5
              #:data "Get psyched to do more backend work")

    (schedule mc-data:mvp
              #:start (moment 2020 1 13 13)
              #:duration 3)

    (schedule !!!
              #:start (moment 2020 1 13 16 30)
              #:duration 1)

    (schedule time-management
              #:start (moment 2020 1 13 17 30)
              #:duration 0.5)

    (schedule exercise
              #:start (moment 2020 1 13 18)
              #:duration 0.5)

    (schedule unstructured
              #:start (moment 2020 1 13 18 30)
              #:duration 0.5)

    (schedule practice-piano
              #:start (moment 2020 1 13 19)
              #:duration 0.5)

    (schedule unstructured
              #:start (moment 2020 1 13 19 30)
              #:duration 1)
    ))

(define jan-12-2020
  (list
    (schedule clear-space-on-cb
              #:start (moment 2020 1 12 12)
              #:duration 0.5)
    
    (schedule improve-calendar-ui-2
              #:start (moment 2020 1 12 12)
              #:duration 2.75)

    (schedule exercise
              #:start (moment 2020 1 12 15)
              #:duration 1)

    (schedule practice-piano
              #:start (moment 2020 1 12 19)
              #:duration 1
              #:data 
              (w:div
                (w:a w:href: "https://stephen-public-stuff.s3.amazonaws.com/First+Midi+Composition.band.zip"
                     "MIDI Thingy"))) 
    ))


(define jan-9-2020
  (list
    (schedule fix-calendar-dates
              #:start (moment 2020 1 9 8 30)
              #:duration 0.5) 

    (schedule morning-todos-jan-9-2020
              #:start (moment 2020 1 9 8 0)
              #:duration 0.5) 

    (schedule put-all-tasks-on-calendar
              #:start (moment 2020 1 9 9 30)
              #:duration 0.5) 

    (schedule big-picture-jan-9-2020
              #:start (moment 2020 1 9 10)
              #:duration 0.5)

    (schedule sara:next-tech-steps
              #:start (moment 2020 1 9 10 30)
              #:duration 0.5)

    (schedule edit-stories
              #:start (moment 2020 1 9 11)
              #:duration 1)

    (schedule jan-9-2020-take-break-1
              #:start (moment 2020 1 9 12)
              #:duration 0.5)

    (schedule mc-classmaps-tickets
              #:start (moment 2020 1 9 12 30)
              #:duration 1)

    (schedule mc-classmaps-tickets-2
              #:start (moment 2020 1 9 11 30)
              #:duration 2)


    ;Evening...
    (schedule breakdown:stripe->db
              #:start (moment 2020 1 9 18 0)
              #:duration 1)
    ))

(define jan-10-2020
  (list

    (schedule morning-todos-jan-10-2020
              #:start (moment 2020 1 10 9)
              #:duration 0.5)

    (schedule fix-up-black-cbs
              #:start (moment 2020 1 10 9 30)
              #:duration 0.25)

    (schedule improve-calendar-ui-1
              #:start (moment 2020 1 10 9 45)
              #:duration 0.25)

    (schedule pomo-bug:something-not-removing
              #:start (moment 2020 1 10 10)
              #:duration 0.25)

    (schedule breakdown:online-tutoring-system
              #:start (moment 2020 1 10 10 15)
              #:duration 1)

    (schedule breakdown:tpes-training-process
              #:start (moment 2020 1 10 11 15)
              #:duration 1)

    (schedule automated-training:docker-db-poc
              #:start (moment 2020 1 10 12 15)
              #:duration 1.75)

    (schedule summer-curric-meeting-1
              #:start (moment 2020 1 10 14 0)
              #:duration 0.5)

    (schedule automated-training:docker-db-poc
              #:start (moment 2020 1 10 14 0)
              #:duration 1)
    ))

(define jan-11-2020
  (list

    (schedule set-up-midi-recording
              #:start (moment 2020 1 11 7 30)
              #:duration 0.5)
    ))




(define past-events 
  (append
    jan-9-2020
    jan-10-2020
    jan-11-2020
    jan-12-2020
    jan-13-2020
    jan-14-2020
    jan-15-2020
    jan-16-2020
    jan-17-2020
    jan-18-2020
    jan-19-2020
    jan-20-2020))



