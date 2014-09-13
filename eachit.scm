;; Tested in guile 2.0.11

(define-syntax each-it
  (lambda (x)
    (syntax-case x ()
      ((_ lst body)
       (with-syntax ((it (datum->syntax x 'it)))
         #'(for-each (lambda (it) body) lst))))))

(each-it '(1 2 3)
         (display it))
