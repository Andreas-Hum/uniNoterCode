main::IO()


qs [x] = [x]
qs [] = []
qs (x:xs) = qs left ++ [x] ++ qs right
            where
                left  = [a| a <- xs, a <= x]
                right = [b| b <- xs, b >  x]

main = print(qs [2,4,1,3,5,7,6,2,3,1,5,3,4,5,7,10,10,10,2,3,4,5,6,2,3,4,1,2] )