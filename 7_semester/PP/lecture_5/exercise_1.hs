{-
    (10 minutter) Funktionen reverse findes i Haskell-præludiet. Den vender en liste, s ̊aledes at f.eks.
    reverse [1,2,3] evaluere til [3,2,1] . Din opgave er nu at definere din egen version af denne funktion,
    rev. Prøv først at finde ud af, hvilken type rev skal have, og følg den generelle tilgang beskrevet i
    Afsnit 6.6
-}

rev :: [a] -> [a]
rev [] = []
rev (x : xs) = rev xs ++ [x]