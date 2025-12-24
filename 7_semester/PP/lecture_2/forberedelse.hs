main :: IO ()

-- Forberedelse

second :: [a] -> a -- Type a list to type  a 
second [] = error "List is empty"  -- Errors 
second [x] = error "List must have 2>= elements" -- Errors 
second (_:y:_) =  y --Rest of the functions (happy path)

main = do 
        print (second [1,2,3,4]) 
        print (second ["some" , "b i z a r r e" , "mango"])
        -- Anything below wont run 
        -- print (second [32])
        -- print (second [1])
    