(define makeList (lambda( num obj)
                   (mLH () num obj)
                   ))
(define mLH (lambda( lis num obj)

              (define L (cons 'a lis ))
              (cond ((> num 0)
                     (mLH L (- num 1) obj))
                    (else lis))

              ))

(define countA (lambda( L)
                 (cAH () 0 L)
                 ))
(define cAH (lambda( num obj)
		(cond ((not null? (obj lis))

              (cond ((pair? (car obj))
                     (define L ((-(cAH 0 (car obj)) 1)))
                     (else (define L num)))

                    )
              (cAH (+ 1 num) (cdr obj))
              )(else num))))


(define level (lambda( L)
                 (levelH () L LAdd)
                 ))
(define levelH (lambda( L La)
     (cond ((pair? (car L))
        
                 )))

(define cAH (lambda( num obj)
		(cond ((not null? (obj lis))
			