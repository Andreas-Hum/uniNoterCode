{-
    10 minutter) Her er en funktion. Hvad gør den? Og hvorfor? Brug forklaringen helt til sidst i
    afsnit 7.3 i bogen til at hjælpe dig med at besvare ”hvorfor-spørgsm ̊alet.
    f i n g o : : [ a ] −> [ a ] −> [ a ]
    f i n g o x s y s = f o l d r ( : ) x s y s 
-}


fingo :: [a] -> [a] -> [a]
fingo xs ys = foldr (:) ys xs

-- Denne funktion er den standarde definiation på liste concat ++
-- hvis man f.eks. siger fingo [1,2] [3,4]
-- call stack er 
{-
    1 : (2:[3,4])
    1 : ([2,3,4])
    [1,2,3,4] 

-}