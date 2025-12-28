{-
(15 minutter) En liste [a1, a2, . . . , an] er aftagende, hvis a1 ≥a2 ≥. . . ≥an. Skriv en funktion
descending, der giver os True, n ̊ar den liste, den f ̊ar som argument, er aftagende, og False ellers.
Eksempelvis skal descending [6,5,5,1] give True, og descending [”plip”,” pli ”,”ppp”] skal give False
. Hvad er dens type?
-}

descending :: (Ord a) => [a] -> Bool
descending [] = True
descending [_] = True
descending (x : y : xs) = (x >= y) && descending (y : xs)