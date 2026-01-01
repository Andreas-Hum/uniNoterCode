min2 :: (Ord a) => [a] -> a
min2 (x:y:xs) = snd (foldl update initial xs)
  where
    -- 1. Start with the first two elements in the right order
    initial = if x < y then (x, y) else (y, x)
    
    -- 2. The higher-order logic for each new element
    update (s1, s2) x
      | x < s1    = (x, s1) -- x is the new smallest; old smallest becomes second
      | x < s2    = (s1, x) -- x is between first and second; update second
      | otherwise = (s1, s2) -- x is larger than both; do nothing