(define-syntax swap!
  (syntax-rules ()
    ((swap x y)
     (let ((tmp x))
       (set! x y)
       (set! y tmp)))))

(define a 1)
(define b 2)

(swap! a b)
(display a)
(display b)
