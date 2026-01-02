{-
) M ̊alet med denne opgave er at definere en funktion frequencies, der, givet en streng s, laver en liste
af par [( x1,f1) ,....( xk,fk) ] s ̊adan at hvis tegnene xi forekommer i alt fi gange i listen s, s ̊a vil listen
af par indeholde parret (xi , fi ).
Som eksempel p ̊a dette skal
f r e q u e n c i e s ” r e g n i n g e r ”
give os listen
[ ( ’ r ’ , 2 ) , ( ’ e ’ , 2 ) , ( ’ g ’ , 2 ) , ( ’ n ’ , 2 ) , ( ’ i ’ , 1 ) ]
a) Hvad skal funktionens type være?
b) Brug rekursion til at give en definition af frequencies.
-}

-- Helper function
count :: Char -> String -> Int
count a [] = 0
count a (x : xs)
  | a == x = 1 + count a xs
  | otherwise = count a xs

frequencies :: String -> [(Char, Int)]
frequencies [] = []
frequencies (x : xs) = (x, count x (x : xs)) : frequencies (filter (\a -> x /= a) xs)

collect :: Char -> String -> (Int, String)
collect c [] = (0, "")
collect c (x:xs)
    | c == x    = let (n, rest) = collect c xs in (n + 1, rest)
    | otherwise = let (n, rest) = collect c xs in (n, x : rest)


{-
frequencies :: String -> [(Char, Int)]
frequencies [] = []
frequencies (x:xs) = 
    let (n, cleanList) = collect x xs
    in (x, n + 1) : frequencies cleanList
-}