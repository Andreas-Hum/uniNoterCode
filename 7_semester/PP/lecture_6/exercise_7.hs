{-
Hvordan kan vi implementere funktionen filter ved hjælp af foldr ?
-}

trashFilter :: (a -> Bool) -> [a] -> [a]
trashFilter f xs = foldr selector [] xs
  where
    selector x as
      | f x = x : as
      | otherwise = as