(define (split-at lst n)
  'YOUR-CODE-HERE
  (if (> n (length lst))
      (cons lst nil)
      (if (= 0 n)
          (cons nil lst)
          (cons 
                (cons (car lst) (car (split-at (cdr lst) (- n 1))))
                (cdr (split-at (cdr lst) (- n 1))))))
)


(define (compose-all funcs)
  'YOUR-CODE-HERE
  (define (helper x)
      (if (null? funcs)
          x
          ((compose-all (cdr funcs)) ((car funcs) x))
          )
      )
  helper
)

