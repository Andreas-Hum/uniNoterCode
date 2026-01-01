{-
(10 minutter) Definer en funktion dbs over lister ved hjælp af højere-ordens-funktioner. Listen
skal tage en liste af talpar og returnere listen af tupler, hvor det andet element er det dobbelte af
det første element.
Som eksempel skal dbs [(1,4) ,(3,6) ,(9,2) ,(4,8) ] returnere listen [(3,6) ,(4,8) ] .
-}

dbs :: (Num a, Eq a) => [(a, a)] -> [(a, a)]
dbs xs = filter (\(x, y) -> y == x * 2) xs