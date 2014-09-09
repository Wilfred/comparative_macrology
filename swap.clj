;; swap! already exists in Clojure
(defmacro my-swap! [x y]
  `(let [tmp# ~x]
     (set! ~x ~y)
     (set! ~y tmp#)))

;; Doesn't yet work because of Clojure's immutable-by-default behaviour
;; http://stackoverflow.com/a/940946/509706
(let [a 1 b 2]
  (my-swap! a b)
  (pr "a")
  (pr a)
  (pr "b")
  (pr b))
