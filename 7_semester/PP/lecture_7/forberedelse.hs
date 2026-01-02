{-
Unære tal best ̊ar af en endelig sekvens af I’er efterfulgt af et Z. Det naturlige tal n kan
repræsenteres som n p ̊a hinanden følgende I’er og et Z, s ̊a f.eks. repræsenteres 4 i unær
notation som IIIIZ. Det naturlige tal 0 repræsenteres som Z.
Definer en rekursiv datatype Unary for unære tal og brug din typeerklæring til at definere
en funktion unary2int af typen unary2int :: Unary −> Integer, der finder det naturlige
tal, som et givet unært tal repræsenterer. Som eksempel skal unary2int (I I I I Z) give
os 4
-}

data Unary = I Unary | Z deriving (Show)

unaryToInt :: Unary -> Integer
unaryToInt Z = 0
unaryToInt (I n) = 1 + unaryToInt n

intToUnary :: Integer -> Unary
intToUnary 0 = Z
intToUnary n = I (intToUnary (n - 1))

{-
Brug erklæringen af typen Tree p ̊a side 97 til at definere en funktion least , der finder det
mindste element i et givet binært træ. Hvilken type skal least have?
-}

minMaybe :: (Ord a) => Maybe a -> Maybe a -> Maybe a
minMaybe Nothing (Just y) = Just y
minMaybe (Just x) Nothing = Just x
minMaybe (Just x) (Just y) = Just (min x y)
minMaybe Nothing Nothing = Nothing

data Tree a = Leaf | Node (Tree a) a (Tree a)

least :: (Ord a) => Tree a -> Maybe a
least Leaf = Nothing
least (Node l x r) =
  let leftRes = least l
      rightRes = least r
      -- Først finder vi det mindste af de to undertræer
      subMin = minMaybe leftRes rightRes
   in -- Til sidst sammenligner vi det med værdien i selve knuden (x)
      minMaybe (Just x) subMin