main :: IO ()


-- main = print (qs [1,56,3,5,6,3,1,3,4,45]

-- Forberedelse

second :: [a] -> a -- Type a list to type  a 
second [] = error "List is empty"  -- Errors 
second [x] = error "List must have 2>= elements" -- Errors 
second (_:y:_) =  y --Rest of the functions (happy path)

-- main = do 
--         print (second [1,2,3,4]) 
--         print (second ["some" , "b i z a r r e" , "mango"])
        --Anything below wont run 
        -- print (second [32])
        -- print (second [1])
    
-- This function is not total, for lists of length 1 and 0 the value is undefined. 
-- Therefore it is a partial function 

-- Exercises for Lecture 2

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