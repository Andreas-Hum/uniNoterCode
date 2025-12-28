{-
    Brug listeabstraktion til at definere en funktion sevens, der, n ̊ar den f ̊ar et heltal k, giver os en liste af
    alle naturlige tal, der er delelige med 7 og mindre end k. Find først ud af, hvad dens type bør være
-}

sevens :: Int -> [Int]
sevens n | n < 7 = [0]
         | n == 8 = [7]
         | otherwise = [x| x <- [7..n-1], mod x 7 == 0]


-- sevens :: Int -> [Int]
-- sevens k = [x | x <- [7, 14 .. k-1]]

-- sevens :: Int -> [Int]
-- sevens k = filter (\x -> x `mod` 7 == 0) [1 .. k-1]