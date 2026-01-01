{-
(15 minutter) Grundtallet for den naturlige eksponentialfunktion e = 2, 718 . . . kan skrives som
grænsen for den uendelige række ∞∑
k=0
1
k!
Funktionen approx skal give os en approksimation af e, som vi finder ved at lægge de første n led
af denne uendelige række sammen. Det vil sige at
approx n =
n∑
k=0
1
k!
Definer approx ved hjælp af højere-ordens-funktioner fra kapitel 7; fakultetsfunktionen k! er defineret
ved
f a c t k = p r o d u c t [ 1 . . k ]

-}

fact :: (Int) -> Int
fact n = foldl (\x acc -> x * acc) 1 [1 .. n]

-- kan bare sige product
-- fact n = foldl (*) 1 [1 .. n]

approx :: Int -> Float
approx n = foldr (\x acc -> acc + (1 / fromIntegral (fact x))) 0 [0 .. n]