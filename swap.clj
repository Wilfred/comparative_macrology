;; swap! already exists in Clojure
(defmacro my-swap! [x y]
  `(dosync
    (let [tmp# @~x]
      (ref-set ~x @~y)
      (ref-set ~y tmp#))))

(def a (ref 1))
(def b (ref 2))

(my-swap! a b)
(pr "a")
(pr a)
(pr "b")
(pr b)
