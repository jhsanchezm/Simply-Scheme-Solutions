;;5.9
; Figure out what values each of the following will return before you
; try them on the computer:

;(se (word (bl (bl (first '(make a))))
;          (bf (bf (last '(baseball mitt)))))
;    (word (first 'with) (bl (bl (bl (bl 'rigidly))))
;          (first 'held) (first (bf 'stitches))))

;(se (word (bl (bl 'bring)) 'a (last 'clean))
;    (word (bl (last '(baseball hat))) (last 'for) (bl (bl 'very))0
;	  (last (first '(sunny days)))))
;-----------------------------------------------------------------------

(se (word (bl (bl (first '(make a))))
          (bf (bf (last '(baseball mitt)))))
    (word (first 'with) (bl (bl (bl (bl 'rigidly))))    ;(matt wright)
          (first 'held) (first (bf 'stitches))))

(se (word (bl (bl 'bring)) 'a (last 'clean))
    (word (bl (last '(baseball hat))) (last 'for) (bl (bl 'very)) ;(brian harvey)
          (last (first '(sunny days)))))
