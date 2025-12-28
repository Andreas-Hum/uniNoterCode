{-
    20 minutter) Et perfekt tal n er et naturligt tal, der er summen af sine egne divisorer, n ̊ar n selv
    er medregnet. 28 er et perfekt tal, da 1 + 2 + 4 + 7 + 14 = 28. Brug listeabstraktion til at definere
    en funktion isperfect , der fortæller os, om et givet naturligt tal er et perfekt tal
-}

devisors :: Int -> [Int]
devisors n = 1:[x| x <- [2..n], n /= x, (n `mod` x) == 0]

isperfect :: Int -> Bool
isperfect n = sum ( devisors n) == n