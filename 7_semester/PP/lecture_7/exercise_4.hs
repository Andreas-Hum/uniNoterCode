import Data.List (transpose)

data Encyclopedia a = Entry String a [Encyclopedia a]
    deriving (Show)

levels :: Encyclopedia a -> [[a]]
levels (Entry _ v children) = 
    [v] : map concat (transpose (map levels children))

checkLevels :: Ord a => [[a]] -> Bool
checkLevels [] = True
checkLevels [_] = True 
checkLevels (current:next:rest) = 
    maximum current < minimum next && checkLevels (next:rest)


layered :: Ord a => Encyclopedia a -> Bool
layered e = checkLevels (levels e)