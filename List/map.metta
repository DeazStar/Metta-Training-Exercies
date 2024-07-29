;map: apply all the function to every single element in the list of numbers
(: List type)
(: Nil List)
(: Cons (-> Number List List))

(= (double $x) (
    * $x 2
))

(= (map (Cons $x $xs) $callback) 
    (if (== $xs Nil)
        (Cons ($callback $x) Nil)
        (Cons ($callback $x) (map $xs $callback))
    )
)

(= (new-list) (map (Cons 1 (Cons 2 (Cons 3 Nil))) double))
!(new-list) ;[(Cons 2 (Cons 4 (Cons 6 Nil)))]

