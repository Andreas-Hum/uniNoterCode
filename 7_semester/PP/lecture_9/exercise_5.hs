{-
Vi kan generalisere sumInts til at være en højereordens-funktionen, whileIO, som for en given IO-læse-
shandling getIO, termineringsbetingelse condF, foldningsfunktion foldF og den oprindelige værdi,
returnerer den ønskede IO-handling. Tjek, at vi for nogle værdier af getIO, condF og foldF kan
gendefinere sumInts ved hjælp af whileIO.
-}

whileIO :: IO a -> (a -> Bool) -> (b -> a -> b) -> b -> IO b
whileIO getIO condF foldF initial = do
  x <- getIO
  if condF x
    then do
      return initial
    else do
      whileIO getIO condF foldF (foldF initial x)