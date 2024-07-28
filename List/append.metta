;append values to a list of numbers
(: List type)
(: Nil List)
(: Cons (-> Number List List))

(= (append (Cons $x $xs) $memeber) 
    (if (== $xs Nil)
        (Cons $x (Cons $memeber Nil))
        (Cons $x (append $xs $memeber))
    )
)

;evaluating the function
(= (new-list) (append (Cons 1 (Cons 2 (Cons 3 Nil))) 5))
!(new-list) ;[(Cons 1 (Cons 2 (Cons 3 (Cons 5 Nil))))]
(= (new-new-list) (append (new-list) 6))
!(new-new-list) ;[(Cons 1 (Cons 2 (Cons 3 (Cons 5 (Cons 6 Nil)))))]

