;; Tested with newLisp v10.6

(define-macro (each-it lst)
    (let ((template (list 'dolist (list 'it lst))))
      ;; args holds all the arguments we haven't bound in our parameter list
      (extend template (args))
      (eval template)))

(each-it (list 5 6 7)
         (println "it: " it)
         (println "it: " (* it 10)))

(exit)
