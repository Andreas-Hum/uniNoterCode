{-
    Suppose you want to define a function map that takes a function f 
    and a list xs and returns the list where f has been applied 
    to every element in xs. For example, suppose double is the 
    function defined by double n = 2 * n 
    Then the function application map double [ 1 , 2 , 3 , 4 ] 
    should return [ 2 , 4 , 6 , 8 ] 
    What should the type of map be?


    the map is a function in haskell which is type 
    (a -> b) -> [a] -> [b]
-}
