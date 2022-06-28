;;6.8

; Write a procedure indef-article that works like this:

; > (indef-article 'beatle)
; (A BEATLE)

; > (indef-article 'album)
; (AN ALBUM)
; Don't worry about silent initial consonants like the h in hour.
;-----------------------------------------------------------------------

(define (indef-article x)
  (if (member? (first x) 'aeiou)
      (se 'an x)
      (se 'a x)))

(indef-article 'beatle)
(indef-article 'album)
