;;; Project: Scoring Bridge Hands


;; card-val
; Write a procedure card-val that takes a single card as its argument and returns the value of that card.

(define (card-val card)
  (let ((rank (bf card)))
    (cond ((equal? rank 'a) 4)
          ((equal? rank 'k) 3)
          ((equal? rank 'q) 2)
          ((equal? rank 'j) 1)
          (else 0))))

;(card-val 'cq)
;(card-val 's7)
;(card-val 'ha)



;; high-card-points
; Write a procedure high-card-points that takes a hand as its argument and returns the total number of points from high cards in the hand.
; (This procedure does not count distribution points.)

(define (high-card-points hand)
  (accumulate + (every (lambda (x) (card-val x)) hand)))

;(high-card-points '(sa s10 hq ck c4))
;(high-card-points '(sa s10 s7 s6 s2 hq hj h9 ck c4 dk d9 d3))



;; count-suit
; Write a procedure count-suit that takes a suit and a hand
; as arguments and returns the number of cards in the hand with the given suit.

(define (count-suit suit hand)
  (count (keep (lambda (x) (equal? suit (first x))) hand)))

;(count-suit 's '(sa s10 hq ck c4))
;(count-suit 'c '(sa s10 s7 s6 s2 hq hj h9 ck c4 dk d9 d3))
;(count-suit 'd '(h3 d7 sk s3 c10 dq d8 s9 s4 d10 c7 d4 s2))



;; suit-counts
; Write a procedure suit-counts that takes a hand as its argument and returns a sentence
; containing the number of spades, the number of hearts, the number of clubs, and the number of diamonds in the hand.

(define (suit-counts hand)
  (every (lambda (x) (count-suit x hand)) 'shcd))

;(suit-counts '(sa s10 hq ck c4))
;(suit-counts '(sa s10 s7 s6 s2 hq hj h9 ck c4 dk d9 d3))
;(suit-counts '(h3 d7 sk s3 c10 dq d8 s9 s4 d10 c7 d4 s2))



;; suit-dist-point
; Write suit-dist-points that takes a number as its argument, interpreting it as the number of cards in a suit.
; The procedure should return the number of distribution points your hand gets for having that number of cards
; in a particular suit.

(define (suit-dist-points num)
  (cond ((= num 0) 3)
        ((= num 1) 2)
        ((= num 2) 1)
        (else 0)))

;(suit-dist-points 2)
;(suit-dist-points 7)
;(suit-dist-points 0)



;; hand-dist-points
;Write hand-dist-points, which takes a hand as its argument and returns the number of distribution points the hand is worth.

(define (hand-dist-points hand)
  (accumulate + (every suit-dist-points (suit-counts hand))))

;(hand-dist-points '(sa s10 s7 s6 s2 hq hj h9 ck c4 dk d9 d3))
;(hand-dist-points '(h3 d7 sk c10 dq d8 s9 s4 d10 c7 d4 s2))



;; Bridge-val
; Write a procedure bridge-val that takes a hand as its argument and returns the total number of points that the hand is worth.

(define (bridge-val hand)
  (+ (hand-dist-points hand)
     (high-card-points hand)))

(bridge-val '(sa s10 s7 s6 s2 hq hj h9 ck c4 dk d9 d3))
(bridge-val '(h3 d7 sk s3 c10 dq d8 s9 s4 d10 c7 d4 s2))
