(define makeList (lambda( num obj)
       (mLH () num obj)
   ))
   (define mLH (lambda( lis num obj)
      
             (define L (cons 'a lis ))
             (cond ((> num 0)
                    (mLH L (- num 1) obj))
                   (else lis))
        
   ))

;(makeList 1000 'a)

(define countA (lambda( L)
		 (cAH 0 L)
		 ))

(define cAH (lambda (num obj)
	      (cond
	       ((not(null? obj))
		(cond ((pair? (car obj))
		       (+ (cAH num (car obj) ) (cAH 0 (cdr obj)))
		       )
		      (else (cAH (+ 1 num) (cdr obj))))
		      )
	       (else num))))
; what up fam

; what up fam

(define level (lambda( L)
		(lEH L ())
		))
(define lEH (lambda (orig add)
	      (define next (car orig))
	      (cond ((null? next)
		     add      
		     )
		    (else
		     (define rest (cdr orig))
		     (cond ((pair? next)
			    (leh rest (append add next))
			    )
			   (else
			   (lEH rest (append add (list next))) 
			    ))
		     )
		    )
	      ))
(level '(a (b c)))