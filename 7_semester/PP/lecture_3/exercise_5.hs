{-
    EXERCISE ANSWER:

    1. What is the type of mango 14?
       ANSWER: mango 14 :: Integer -> Integer -> Integer

    2. EXPLANATION:
       - The original function 'mango x y z' uses numeric operators (*, +, -). 
         In Haskell, these operators require all inputs (x, y, z) and the result 
         to be of the same numeric type.
       - The full type of mango :: Num a => a -> a -> a -> a.
       - This is a 'curried' function. This means that instead of taking all 
         three arguments at once, it takes them one by one.
       - When we call 'mango 14', we provide the first argument (x). Through 
         partial application, the function returns a NEW function.
       - This new function is still waiting for the remaining two arguments (y and z).
       - Because the interpreter defaults these numeric literals to the 'Integer' 
         type, the resulting type is Integer -> Integer -> Integer (two inputs 
         left, and one final result).
-}

-- mango :: Num a => a->a->a->a
mango :: Num a => a -> a -> a -> a
mango x y z = x * y + z - 42


answer :: Integer -> Integer -> Integer
answer = mango 14

