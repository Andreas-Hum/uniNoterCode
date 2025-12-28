{-
    Defin ́er funktionen replicate ved hjælp af rekursion – og brug mønstre i din løsning. Denne funktion
    tager et heltal nog et element xog returnerer en liste med nelementer, hvor xer gentaget præcis
    ngange. Som eksempel skal replicate 3 5 give [5,5,5] . Hvilken type skal replicate have?
-}

replicates :: Int -> Int -> [Int]
replicates 0 _ = []
replicates n x = x : replicates (n - 1) x

{-
    Defin ́er funktionen improve ved hjælp af rekursion – og brug mønstre i din løsning. Den tager en
    liste xsog, hvis xsindeholder mindst to elementer, returnerer den en liste, hvor hvert andet element
    er fjernet. Som eksempel skal improve [1,2,3,4,5,6,7] give [1,3,5,7] . Hvilken type skal improve
    have?
-}

improve :: [a] -> [a]
improve [] = []
improve [x] = [x]
improve (x : _ : xs) = x : improve xs
