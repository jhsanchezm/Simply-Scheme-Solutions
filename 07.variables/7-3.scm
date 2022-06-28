;;7.3

; The following program doesn't work. Why not? Fix it.

; (define (superlative adjective word)
;  (se (word adjective 'est) word))
; It's supposed to work like this:

; > (superlative 'dumb 'exercise)
; (DUMBEST EXERCISE)
;-----------------------------------------------------------------------

(define (superlative adjective wd)    ;Don't put call the parameter with an already pre-configured name (like "word").
  (se (word adjective 'est) wd))

(superlative 'dumb 'exercise)
