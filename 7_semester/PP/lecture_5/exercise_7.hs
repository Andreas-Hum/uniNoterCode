{-
 Funktionen rle er en funktion, der, n ̊ar den f ̊ar en liste xs, producerer en liste af par af elementer
fra xs og heltal2. Denne liste af par har sine elementer i den rækkefølge, de oprindeligt optr ̊adte, og
indeholder (x, n), hvis der er n p ̊a hinanden følgende forekomster af x i listen. For eksempel skal
r l e [ ’ a ’ , ’ a ’ , ’ a ’ , ’ g ’ , ’ g ’ , ’ b ’ , ’ a ’ , ’ a ’ ]
give os listen [(’ a ’,3) ,(’ g ’,2) ,(’ b ’,1) ,(’ a ’,2) ] , og
r l e [ 1 , 1 , 1 , 2 , 2 , 1 , 3 , 3 ]
skal give os [(1,3) ,(2,2) ,(1,1) ,(3,2) ] . Definer rle i Haskell. Prøv først at finde ud af, hvilken type
rle skal have, og følg den generelle tilgang beskrevet i Afsnit 6.6.

-}

rle :: (Eq a) => [a] -> [(a, Int)]
rle [] = []
rle [x] = [(x, 1)] -- Basistilfælde for ét element
rle (x : xs) =
  let -- 1. Vi pauser og får resultatet fra resten
      -- Vi mønstergenkender på det FØRSTE par i resultatet ((y, n))
      -- og gemmer resten af listen i 'rest'
      ((y, n) : rest) = rle xs
   in if x == y
        then
          -- Vi er ens! Opdater antallet n til n+1
          -- Vi beholder y (eller x), men med nyt antal.
          -- Vi skal IKKE bruge 'rest' her, for vi ændrer kun på hovedet.
          (y, n + 1) : rest
        else
          -- Vi er forskellige! Lav et nyt par for x.
          -- Det gamle par ((y,n):rest) skal bare bagefter.
          (x, 1) : (y, n) : rest