;; Tested with newLisp v10.6

;; gensym is not provided in newLisp, but here's an implementation
;; based on an example by Lutz, the lead developer
;; http://www.newlispfanclub.alh.net/forum/viewtopic.php?p=10534#p10534
(define (gensym) (sym (string "gs" (uuid))))

;; swap is already defined in newlisp
(define-macro (my-swap x y)
    (let ((tmp-sym (gensym)))
      (eval (list 'setf tmp-sym x))
      (eval (list 'setf x y))
      (eval (list 'setf y tmp-sym))))

(define (use-swap)
    (let ((a 1) (b 2))
      (my-swap a b)
      (println "a: " a " b: " b)))

(use-swap)
(exit)
