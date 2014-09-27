;; Tested with newLisp v10.6

;; swap is already defined in newlisp
(context 'my-swap)
(define-macro (my-swap:my-swap x y)
    (set 'tmp (eval x))
    (set x (eval y))
    (set y tmp))
(context MAIN)

(define (use-swap)
    (let ((a 1) (b 2))
      (my-swap a b)
      (println "a: " a " b: " b)))

(use-swap)
(exit)
