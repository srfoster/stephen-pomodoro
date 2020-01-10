#lang racket

(provide (all-defined-out)
         (all-from-out stephen-pomodoro/tasks/active)
         (all-from-out stephen-pomodoro/tasks/open)
         (all-from-out stephen-pomodoro/tasks/complete))

(require pomodoro 
         pomodoro/renderer
         stephen-pomodoro/tasks/active
         stephen-pomodoro/tasks/open
         stephen-pomodoro/tasks/complete
         "./as-list.rkt")

(define complete-tasks (exports->list 'stephen-pomodoro/tasks/complete))
(define open-tasks (exports->list 'stephen-pomodoro/tasks/open))
(define active-tasks 
  (map 
    (curry add-tag active)
    (exports->list 'stephen-pomodoro/tasks/active)))
        
(define main-list (append active-tasks open-tasks complete-tasks))



