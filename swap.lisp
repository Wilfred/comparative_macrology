;; Tested on SBCL

(defmacro swap (x y)
  (let ((tmp-sym (gensym)))
    `(let ((,tmp-sym ,x))
       (setf ,x ,y)
       (setf ,y ,tmp-sym))))

(defun use-swap ()
  (let ((a 1)
        (b 2))
    (swap a b)
    (format t "a: ~A, b: ~A~%" a b))
  (let ((my-list (list 3 4)))
    (swap (first my-list) (second my-list))
    (format t "(first my-list): ~A, (second my-list): ~A~%"
            (first my-list) (second my-list))))

(use-swap)


