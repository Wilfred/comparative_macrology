;; Tested with newLisp v10.6

(define-macro (my-swap x y)
    (let ((tmp (eval y)))
      (eval (setf y x))
      (eval (setf x tmp))))

(define (use-swap)
    (let ((a 1) (b 2))
      (my-swap a b)
      (println "a: " a " b: " b)))

(use-swap)
(exit)
