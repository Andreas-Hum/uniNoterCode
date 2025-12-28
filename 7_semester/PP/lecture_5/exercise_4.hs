{-
    (20 minutter) Funktionen isolate tager en liste l og et element x og returnerer et par af to nye
    lister ( l1 , l2 ). Den første liste l1 indeholder alle elementer i l , der ikke er lig med x. Den anden
    liste l2 indeholder alle forekomster af x i l .
    •isolate [4,5,4,6,7,4] 4 evaluere til ([5,6,7],[4,4,4]) .
    •isolate [’ g ’,’ a ’,’ k ’,’ a ’] ’ a’ evaluere til ([’ g ’,’ k ’], [’ a ’,’ a ’]) .
    Definer isolate i Haskell uden at bruge fst , snd, head eller tail . Hvad skal typen af isolate være?
    Vink med vognstang: Placer det rekursive kald i en let - eller where-klausul og brug mønstre til
    at finde komponenterne i resultatet af dette kald
-}

isolate :: (Eq a) => [a] -> a -> ([a], [a])
isolate [] _ = ([], [])
isolate (y : ys) x =
  if y == x
    then
      (others, y : matches)
    else
      (y : others, matches)
  where
    (others, matches) = isolate ys x
