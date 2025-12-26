{-
Find a Haskell expression whose type is (Ord a1, Eq a2) =>a2 −> a2 −> (a1, a1)−> a1
-}

bingo :: Eq a1 => a1 -> a1 -> (a2, a2) -> a2
bingo x y (p1, p2) = if x == y then p1 else p2

