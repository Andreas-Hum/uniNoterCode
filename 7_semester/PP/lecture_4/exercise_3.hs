{-
    10 minutter) Sidste uge læste vi, at en berømt influencer p ̊a Instagram har defineret en Haskell-
    funktion bighead, der kan fortælle os, hvor mange elementer i en liste xs er større end (>) det første
    element i xs. Som eksempel p ̊a funktionens opførsel vil resultatet af bighead [7,4,5,8,9] være 2.
    Nu er det din tur til at være en berømt influencer. Hvordan ville du definere bighead-funktionen?
    Hvad bør dens type være?
-}

bighead :: (Ord a) => [a] -> Int
bighead [] = 0
bighead (x : xs) = sum [1 | a <- xs, x < a]