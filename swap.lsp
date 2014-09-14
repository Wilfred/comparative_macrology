;; Tested with newLisp v10.6

;; swap is already defined in newlisp
(define-macro (my-swap x y)
    (let ((tmp (eval x)))
      (eval (list 'setf x y))
      (eval (list 'setf y 'tmp))))

(define (use-swap)
    (let ((a 1) (b 2))
      (my-swap a b)
      (println "a: " a " b: " b)))

(use-swap)
(exit)
