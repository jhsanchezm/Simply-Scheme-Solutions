;; 8.6

; When you're talking to someone over a noisy radio connection,
; you sometimes have to spell out a word in order to get the other person to understand it.
; But names of letters aren't that easy to understand either,
; so there's a standard code in which each letter is represented by a particular word that starts with the letter.
; For example, instead of "B" you say "bravo."

;Write a procedure words that takes a word as its argument and returns a sentence of the names of the letters in the word:

;> (words 'cab)
;(CHARLIE ALPHA BRAVO)
;(You may make up your own names for the letters or look up the standard ones if you want.)

;Hint: Start by writing a helper procedure that figures out the name for a single letter.

;-------------------------------------------------------------------------------------------------------------------------

(define (letters letter)
  (cond ((equal? letter 'a) 'alfa)
      ((equal? letter 'b) 'bravo)
      ((equal? letter 'c) 'charlie)
      ((equal? letter 'd) 'delta)
      ((equal? letter 'e) 'echo)
      ((equal? letter 'f) 'foxtrot)
      ((equal? letter 'g) 'golf)
      ((equal? letter 'h) 'hotel)
      ((equal? letter 'i) 'india)
      ((equal? letter 'j) 'juliett)
      ((equal? letter 'k) 'kilo)
      ((equal? letter 'l) 'lima)
      ((equal? letter 'm) 'mike)
      ((equal? letter 'n) 'november)
      ((equal? letter 'o) 'oscar)
      ((equal? letter 'p) 'papa)
      ((equal? letter 'q) 'quebec)
      ((equal? letter 'r) 'romeo)
      ((equal? letter 's) 'sierra)
      ((equal? letter 't) 'tango)
      ((equal? letter 'u) 'uniform)
      ((equal? letter 'v) 'victor)
      ((equal? letter 'w) 'whiskey)
      ((equal? letter 'x) 'x-ray)
      ((equal? letter 'y) 'yankee)
      ((equal? letter 'z) 'zulu)))

(define (words wd)
  (every letters wd))

(words 'cab)
(words 'paraguayo)