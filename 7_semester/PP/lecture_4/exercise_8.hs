{-
    Skriv en funktion dupli, der gentager hvert element i en given liste. Som eksempel skal dupli [1, 2, 3]
    give os [1,1,2,2,3,3] . Hvad bør typen af dupli være? Hint: Funktionen concat fra Kapitel 5 er nyttig
    til at sætte det hele sammen med
-}

dupli :: [a] -> [a]
dupli xs = concat [[x, x] | x <- xs]

