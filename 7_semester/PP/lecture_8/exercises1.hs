{-
    (10 minutter) Find Haskell-udtryk, der har følgende typer:
    1. (Ord a, Num a)=>a −> a −> [[Bool]] −> Bool
    2. Num a =>(t −> a, t)−> a −> a
-}

opgave1 :: (Ord a, Num a) => a -> a -> [[Bool]] -> Bool
opgave1 x y zss = x > y || null zss

opgave2 :: (Num a) => (t -> a, t) -> a -> a
opgave2 (f, x) y = (f x) * y