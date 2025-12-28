{-
1. (10 minutter) Definer en funktion idhead, der fortæller os, om en liste af par starter med et par,
hvor første og andet element er identiske.
Vi vil have, at idhead [(42,42) ,(3,4) ,(484000,5) ] giver os True, men at idhead [(”plip”,”mango”)
,(”dingo”,”kpst”)] giver os False.
I din definition m ̊a du ikke bruge head eller if-then-else-udtryk! Er funktionen polymorf? Hvis ja,
p ̊a hvilken m ̊ade?
-}

-- This function is ad hoc polymorpic as we have to overload.
idhead :: (Eq a) => [(a, a)] -> Bool
idhead ((x, y) : _) = x == y
idhead [] = False