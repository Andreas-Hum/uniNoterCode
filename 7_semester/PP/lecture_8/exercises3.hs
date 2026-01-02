{-
Fractionalt1 => ( t 2 −> t 1 ) −> ( t 2 −> t 1 ) −> ( t 1 −> t 3 ) −> t 2 −> t 3
-}


solution :: Fractional t1 => (t2 -> t1) -> (t2 -> t1) -> (t1 -> t3) -> t2 -> t3
solution f g h x = h (f x + g x)