;sort element in the accending order
;the code works but it's slow if using playground it may say request time out if the list is a little big
(: List type)
(: Nil List)
(: Cons (-> Number List List))

(= (append (Cons $x $xs) $memeber) 
    (if (== $xs Nil)
        (Cons $x (Cons $memeber Nil))
        (Cons $x (append $xs $memeber))
    )
)

(= (min (Cons $x $xs) $min) 
    (if (== $xs Nil)
        (if (< $x $min)
            $x
            $min
        )
        (if (< $x $min)
            (min $xs $x)
            (min $xs $min)
        )
    )
)
(= (min (Cons $x $xs)) 
    (if (== $xs Nil)
        $x
        (min $xs $x)
    )
)

(= (remove-element (Cons $x $xs) $memeber) 
    (if (== $x $memeber)
        $xs
        (Cons $x (remove-element $xs $memeber))
    )
)

(= (sort (Cons $x $xs) $list)  
    (if (== $xs Nil)
        (Cons $x $list)
        (if (== $list Nil)
            (sort (remove-element (Cons $x $xs) (min (Cons $x $xs))) (Cons (min (Cons $x $xs)) Nil))
            (sort (remove-element (Cons $x $xs) (min (Cons $x $xs))) (append $list (min (Cons $x $xs))))
        )
    )
)

(= (sort (Cons $x $xs))
    (sort (Cons $x $xs) Nil)
)

(= (sort (Cons $x Nil))
    (Cons $x Nil)
)

!(sort (Cons 2 (Cons 3 (Cons 4 Nil))))
