{-
Brug rekursion til at definere en Haskell-værdi letters , der er en sekvens af han-
dlinger, som gør følgende:
• Modtager en streng
• Udskriver tegnene i strengene  ́et ad gangen, hvor hvert tegn efterfølges af et linjeskif
-}

main :: IO ()
main = do
  w <- getLine
  printer w
  where
    printer [] = putChar '\n'
    printer (x : xs) = do
      putStrLn [x]
      printer xs