;; Tested on SBCL

(defmacro each-it (list &rest body)
  `(mapc (lambda (it) ,@body) ,list))

(each-it (list 1 2 3 4 5)
         (format t "~d~%" it)
         (format t "~d~%" (* it 10)))
