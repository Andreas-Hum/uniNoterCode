{-
Funktionen within tager en liste af tal og et par af tal og giver os en liste af tal, der er i inputlisten
og inden for intervallet (inklusivt) givet af inputparret.
Elementerne i outputlisten skal forekomme i den samme rækkefølge, som de optr ̊adte i inputlisten.
Hvis inputparret er (n1,n2), antages det, at n1 er den nedre grænse for intervallet, og n2 er den
øvre grænse.
Som eksempel skal within [1,3,4,5,2] (1,3) give os [1,3,2] , og within [1,3,4,5,2] (3,1) skal give
os [] .
Definer within ved hjælp af højere-ordens-funktioner fra kapitel 7
-}

within :: (Num a, Ord a) => [a] -> (a, a) -> [a]
within xs (a, b) = filter (\x -> b >= x && x >= a) xs
-- within xs (a, b) = [x | x <- xs, x >= a, x <= b]
-- within xs (a, b) = foldr (\x acc -> if x >= a && x <= b then x : acc else acc) [] xs

