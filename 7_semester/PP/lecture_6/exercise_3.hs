{-
    (10 minutter) Implementer funktionen sumrows. Funktionen tager en liste af lister af tal og
    returnerer en endimensional liste af tal, hvor hvert tal er lig med summen af den tilsvarende række
    i inputlisten.
    Hvis en liste er tom, er dens sum 0.
    Som eksempel skal sumrows [[1,2], [3,4]] give os [3, 7], og sumrows [[],[],[1]] skal give os [0,0,1] .
    Definer sumrows ved hjælp af højere-ordens-funktioner fra kapitel 7
-}

sumrows :: (Num a) => [[a]] -> [a]
sumrows xs = map (foldr (\x acc -> x + acc) 0) xs
-- sumrows xs = map (foldr (+) 0) xs

