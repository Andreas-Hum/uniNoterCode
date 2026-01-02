{-
10 minutter) Defin ́er en Haskell-datatype Aexp for aritmetiske udtryk med addition, multipli-
kation, tal og variable. Opbygningsreglerne i den abstrakte syntaks er
E ::= n |x |E1 + E2 |E1 ·E2
Antag, at variable x er strenge, og at tal n er heltal.
-}

data E = N Int | X String | Add E E | Mult E E
