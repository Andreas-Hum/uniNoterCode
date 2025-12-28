-- Sumlist exercise
sumlist :: (Num a) => [a] -> a
sumlist [] = 0
sumlist (x : xs) = x + sumlist xs

-- Remove exercise
remove :: [a] -> [a]
remove [_] = []
remove (x : xs) = x : remove xs