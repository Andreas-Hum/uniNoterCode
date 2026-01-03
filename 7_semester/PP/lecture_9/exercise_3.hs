{-
20 minutter) Definer en handling hugorm :: IO(), der læser et givet antal heltal fra tastaturet,
 ́et pr. linje, og til sidst viser summen af heltalene1. Det, vi gerne vil have, er f.eks. følgende:
∗Main>hugorm
Hvor mange t a l v i l du g e r n e a d d e r e ? 5
1
2
3
4
5
Summen e r 15
∗Main
-}

main = do
  putStr "Hovr mange tal vil du gerne addere? "
  num <- getLine
  hej (read num :: Int) 0
  where
    hej 0 n = putStrLn ("summen er " ++ show n)
    hej x n = do
      nextNum <- getLine
      hej (x - 1) ((read nextNum :: Int) + n)
