-- all
myAll :: (a -> Bool) -> [a] -> Bool
myAll f [] = True
myAll f (x : xs) = f x && myAll f xs

-- myAll f xs = foldr ((&&) . f) True xs

-- any
myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f (x : xs) = f x || myAny f xs

-- Dropwhile
myDropWhile :: (a -> Bool) -> [a] -> [a]
myDropWhile _ [] = []
myDropWhile f (x : xs)
  | f x = myDropWhile f xs
  | otherwise = x : xs

