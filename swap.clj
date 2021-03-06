;; swap! already exists in Clojure
(defmacro my-swap! [x y]
  `(dosync
    (let [tmp# (deref ~x)]
      (ref-set ~x (deref ~y))
      (ref-set ~y tmp#))))

(def a (ref 1))
(def b (ref 2))

(my-swap! a b)
(prn "a")
(prn @a)
(prn "b")
(prn @b)
