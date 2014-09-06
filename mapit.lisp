(defmacro map-it (list &rest body)
  `(loop for it in ,list
      do ,@body))

(map-it (list 1 2 3 4 5)
        (format t "~d~%" it)
        (format t "~d~%" (+ it 1)))
