(defmacro each-it [lst & body]
  `(doseq [~'it ~lst]
     ~@body))

(macroexpand-1 '(each-it (list 1 2 3 4)
         (prn it)
         (prn (* it 10))))

(each-it (list 1 2 3 4)
         (prn it)
         (prn (* it 10)))
