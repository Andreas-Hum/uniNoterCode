{-
(20 minutter) En tidligere videnskabs- og uddannelsesminister forsøger nu at f ̊a en universitets-
grad og er travlt optaget af at lære Haskell. Ministeren forsøger at konstruere en funktion triples ,
der tager en liste af tupler (hver tuple har præcis 3 elementer) og omdanner denne liste af tupler
til en tuple af lister.
triples [(1,2,3) , (4, 5, 6) , (7, 8, 9) ] skal producere ( [1,4,7], [2, 5, 8], [3, 6, 9] ).
Ministeren skrev følgende stykke kode og en typespecifikation, men løb ind i problemer:
t r i p l e s : : Num a => [ ( a , a , a ) ] −> ( [ a ] , [ a ] , [ a ] )
t r i p l e s [ ] = ( )
t r i p l e s [ ( a , b , c ) ]= ( [ a ] , [ b ] , [ c ] )
t r i p l e s ( x : xs , y : ys , z : z s ) = [ x , y , z ] : T r i p l e s [ ( xs , ys , z s ) ]
Ret de fejl, som funktionen triples har. Skriv en rekursiv definition af triples , der rent faktisk
virker. Brug venligst rekursion og lokale deklarationer med mønstre i din løsning, og brug tilgangen
beskrevet i afsnit 6.6
-}

triples :: (Num a) => [(a, a, a)] -> ([a], [a], [a])
triples [] = ([], [], [])
triples [(a, b, c)] = ([a], [b], [c])
triples ((a, b, c) : xs) =
  let (as, bs, cs) = triples xs
   in (a : as, b : bs, c : cs)