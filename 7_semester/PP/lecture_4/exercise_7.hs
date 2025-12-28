{-
    Brug listeabstraktion til at definere en funktion flop , der, n ̊ar den f ̊ar en liste af par, returnerer en
    liste af par, hvis komponenter er ombyttet. Listen kan være tom. For eksempel skal flop [(1,’ a ’)
    ,(3,’ r ’) ,(9,’ e ’) ] returnere listen [(’ a ’,1) ,(’ r ’,3) ,(’ e ’,9) ] . Hvad er typen af flop ?
-}

swaptuple :: (a, b) -> (b, a)
swaptuple (x, y) = (y, x)

flop :: [(a, b)] -> [(b, a)]
flop = map (\(x,y) -> (y,x)) 

-- flop = map swaptuple
-- flop xs = [(y, x) | (x, y) <- xs]