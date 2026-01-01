positions :: String -> [Int]
positions str = map (\c -> fromEnum c - fromEnum 'a' + 1) str

sumsq :: Int -> Int
sumsq n = foldr (\x acc -> acc + x^2) 0 [1 .. n]