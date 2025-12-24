main::IO()

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