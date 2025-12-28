{-
Her er en funktion sums, hvis definition har  ́et enkelt brug af listeabstraktion.
1
sums m n = [ x+y | x <−[ 1 . . m] , y <−[ 1 . . n ] ]
Listeabstraktion i denne definition bruger to generatorer. Skriv en alternativ definition af sums, der
kun bruger listeabstraktioner (du kan have brug for mere end  ́en listeabstraktion) med  ́en generator
hver. Hint: Funktionen concat fra Kapitel 5 vil ogs ̊a være n yttig her.
-}


sums :: (Enum a, Num a) => a -> a -> [a]
sums m n = concat [ [ x+y | y <- [1..n] ] | x <- [1..m] ]