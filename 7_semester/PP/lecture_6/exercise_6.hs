{-
Flere opgaver til løsning i dit eget tempo
I dine løsninger skal du huske p ̊a læringsm ̊alene for denne kursusgang! Du skal bruge højere-ordens-
funktioner fra kapitel 7 – ikke rekursion eller listeabstraktion!!
a) Funktionen partition generaliserer funktionen isolate fra kursusgang 5.
Funktionen partition tager et prædikat p og en liste xs og giver os parret af lister af elementer, der
henholdsvis opfylder og ikke opfylder prædikatet.
a) Definer partition ved hjælp af filter .
b) Definer partition ved hjælp af foldr
-}

-- a
myPartition :: (a -> Bool) -> [a] -> [[a]]
myPartition f xs = [filter f xs] ++ [filter (not . f) xs]

--
myPartitionb :: (a -> Bool) -> [a] -> [[a]]
myPartitionb f xs = [foldr (\x acc -> if f x then x : acc else acc) [] xs] ++ [foldr (\x acc -> if f x then acc else x : acc) [] xs]

{-
myPartition f xs = foldr (\x (trues, falses) -> 
    if f x 
    then (x : trues, falses)   -- Add to the first list
    else (trues, x : falses)   -- Add to the second list
    ) ([], []) xs              -- Start with two empty lists
-}
{-
myPartition :: (a -> Bool) -> [a] -> ([a], [a])
myPartition f xs = foldr select ([], []) xs
  where
    select x (trues, falses)
      | f x       = (x : trues, falses)
      | otherwise = (trues, x : falses)
-}