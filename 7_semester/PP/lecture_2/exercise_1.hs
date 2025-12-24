main :: IO ()
-- Exercise 1

-- All but second, return a list without the second element in it
allButSecond :: [a] -> [a] -- Type list to type list
allButSecond [] = [] -- Empty base case
allButSecond [x] = [x] -- Single element base case
allButSecond (x : _ : xs) = x : xs -- Rest of the happy paths can use ++ but under the hood [x] is x : []
-- you can do : if the left operatior is one depth below the right
-- allButSecond xs = take 1 xs ++ drop 2 xs another way to do it
main = do
  print (allButSecond [1, 2, 3])
  print (allButSecond [1, 4, 5, 6])
  print (allButSecond ["some", "b i z a r r e", "mango"])

-- This is a total function
