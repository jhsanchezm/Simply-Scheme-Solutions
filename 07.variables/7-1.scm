;;7.1

; The following procedure does some redundant computation.

; (define (gertrude wd)
;  (se (if (vowel? (first wd)) 'an 'a)
;      wd
;      'is
;      (if (vowel? (first wd)) 'an 'a)
;      wd
;      'is
;      (if (vowel? (first wd)) 'an 'a)
;      wd))

; > (gertrude 'rose)
; (A ROSE IS A ROSE IS A ROSE)

; > (gertrude 'iguana)
; (AN IGUANA IS AN IGUANA IS AN IGUANA)
; Use let to avoid the redundant work.
;-----------------------------------------------------------------------


(define (vowel? x)
  (member? x 'aeiou))

(define (gertrude wd)
  (let ((condition (if (vowel? (first wd)) 'an 'a)))
        (se condition wd 'is condition wd 'is condition wd)))

(gertrude 'rose)
(gertrude 'iguana)
