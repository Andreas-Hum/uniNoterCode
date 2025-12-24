main :: IO ()

-- Exercise 1

-- All but second, return a list without the second element in it
allButSecond :: [a] -> [a] --Type list to type list
allButSecond [] = [] -- Empty base case
allButSecond [x] = [x] -- Single element base case 
allButSecond (x:_:xs) = [x] ++ xs --Rest of the happy paths
-- allButSecond xs = take 1 xs ++ drop 2 xs another way to do it

-- main = do print (allButSecond [1,2,3])
--           print (allButSecond [1,4,5,6])
--           print (allButSecond ["some" , "b i z a r r e" , "mango"])

--This is a total function

--Exercise 2

midtover :: [a] -> [[a]]
midtover [] = []
midtover [x] = [[x]]


-- Tå måder at gøre det på

-- midtover xs = [take n xs] ++ [drop n xs]
--             where
--                 n = length xs `div` 2 -- Div always returns an int no need to floor

midtover xs = [left] ++ [right]
            where 
                (left, right) = splitAt (length xs `div` 2) xs

         


main =  do print (midtover [1,3,4])
           print (midtover ["this", "is", "actually", "a", "fairly", "long", "list"])