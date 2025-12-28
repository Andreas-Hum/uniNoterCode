{-
  Lav en funktion frequencies, der, givet en streng s, opretter en liste af par [( x1,f1) ,....( xk,fk) ]
s ̊aledes, at hvis tegnene xi forekommer et samlet antal af fi gange i listen s, s ̊a vil listen af par
indeholde parret (xi , fi ). Som eksempel p ̊a dette skal
f r e q u e n c i e s ” r e g n i n g e r ”
returnere listen
[ ( ’ r ’ , 2 ) , ( ’ e ’ , 2 ) , ( ’ g ’ , 2 ) , ( ’ n ’ , 2 ) , ( ’ i ’ , 1 ) ]
-}

frequencies :: String -> [(Char, Int)]
frequencies [] = []
frequencies [x] = [(x, 1)]
frequencies (x : xs) =
  let ((y, n) : rest) = frequencies xs
   in if x == y
        then
          (y, n + 1) : rest
        else
          (x, 1) : (y, n) : rest