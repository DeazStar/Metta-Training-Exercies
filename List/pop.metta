;pop: removing the last value from  list of numbers
(: List type)
(: Nil List)
(: Cons (-> Number List List))

(= (pop (Cons $x $xs)) 
    (if (== $xs Nil)
        (Nil)
        (Cons $x (pop $xs))
    )
)

;evaluating the function
!(pop (Cons 1 (Cons 2 (Cons 3 (Cons 4 Nil))))) ;[(Cons 1 (Cons 2 (Cons 3 (Nil))))]
!(pop (Cons 1 Nil)) ;[(Nil)]
