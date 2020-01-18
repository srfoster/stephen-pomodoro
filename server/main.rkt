#lang web-server/insta

(require pomodoro/calendar
         website/bootstrap
        ; stephen-pomodoro/schedule
         racket/rerequire
         )

(define (response/html html)
  (response/full
    200 #"Success"
    (current-seconds) TEXT/HTML-MIME-TYPE
    '()
    (list 
      (string->bytes/utf-8 
        (xml->string html)))))

(define (start req)
  ;TODO (hotswapping)
  ;https://github.com/tonyg/racket-reloadable/tree/master#readme
  ;(define future-events (dynamic-rerequire 'stephen-pomodoro/schedule 'future-events))
  (response/html
    (content
      (task-calendars future-events))))

(static-files-path "out")
