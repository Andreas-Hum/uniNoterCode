{-
20 minutter) Brug din Haskell-datatype fra den foreg ̊aende opgave til at definere en funktion
eval, som, n ̊ar den f ̊ar en term af typen Aexp og en tildeling ass af variable til tal, kan beregne
værdien af udtrykket. Som eksempel, hvis vi har tildelingen [x 7→3, y 7→4], skal eval kunne fortælle
os, at værdien af 2 ·x + y er 10. Hint: En tildeling er en funktion. Hvordan kan du repræsentere
den?
-}

type Assoc k v = [(k, v)]

find :: (Eq k) => k -> Assoc k v -> v
find k t = head [v | (k', v) <- t, k == k']

data E = N Int | X String | Add E E | Mult E E

eval :: E -> Assoc String Int -> Int
eval (N n) _ = n
eval (X s) ass = find s ass
eval (Add e1 e2) ass = (eval e1 ass) + (eval e2 ass)
eval (Mult e1 e2) ass = (eval e1 ass) * (eval e2 ass)
