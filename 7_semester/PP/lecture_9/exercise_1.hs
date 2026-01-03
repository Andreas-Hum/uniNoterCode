main :: IO ()
main = do
  w <- getLine
  loop ((read w) :: Int)
  where
    loop 1 = putStr (show 1)
    loop x = do
      putStr (show x)
      if even x
        then loop (x `div` 2)
        else loop (3 * x + 1)


{-
Input: Programmet venter på, at du skriver et tal (w), som det læser som en Int.

Loop-funktionen: Den starter en rekursiv funktion kaldet loop.

Base case: Hvis tallet er 1, printer det "1" og stopper.

Rekursion: Hvis tallet er højere end 1, printer det tallet og tjekker:

Hvis tallet er lige: Det dividerer tallet med 2 og kører loop igen.

Hvis tallet er ulige: Det ganger tallet med 3, lægger 1 til, og kører loop igen.
-}