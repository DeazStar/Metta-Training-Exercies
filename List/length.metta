;a function to find a lenght of of a list of numbers

(: List type)
(: Nil List)
(: Cons (-> Number List List))

(= (length Nil) 0)
(= (length (Cons $x $xs)) (+ 1 (length $xs)))

!(length (Cons 1 (Cons 2 (Cons 3 Nil))))
