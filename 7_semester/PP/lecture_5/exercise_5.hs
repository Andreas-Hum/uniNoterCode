{-
20 minutter) Funktionen wrapup er en funktion, der tager en liste og giver os en liste af lister.
Hver liste i denne liste indeholder de p ̊a hinanden følgende elementer fra den oprindelige liste,
der er identiske. For eksempel skal wrapup [1,1,1,2,3,3,2] give os listen [[1,1,1],[2],[3,3],[2]] ,
og wrapup [True,True,False,False,False , True] skal give os listen [[ True,True ],[ False , False , False ],[
True]]. Definer wrapup i Haskell ved hjælp af rekursion1, men uden at bruge fst , snd, head eller
tail . Vink med vognstang: Husk definitionen af isolate -funktionen fra før.
-}

wrapup :: (Eq a) => [a] -> [[a]]
wrapup [] = []
wrapup [x] = [[x]]
wrapup (x : xs) =
  let (firstGroup : otherGroups) = wrapup xs
      (y : ys) = firstGroup
   in if x == y
        then
          -- Sæt (x + firstGroup) foran otherGroups
          (x : firstGroup) : otherGroups
        else
          -- Sæt [x] foran (firstGroup + otherGroups)
          [x] : firstGroup : otherGroups