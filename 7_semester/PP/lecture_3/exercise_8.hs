{-
    Here is a Haskell expression. [ (+) , (*) , (+) , (-) ] 
    What does it contain and what is the type of the expression? 
    Find the answer without asking the Haskell interpreter. 
    Explain why your answer is correct. 
    Then (and only then!) ask the Haskell interpreter what the type is. 
    What can you say about the type of [ (+) , (*) , (+) , (-) , (++) ]
-}

-- [ (+), (*), (+), (-) ] :: Num a => [a -> a -> a]
-- [ (+), (*), (+), (-), (++) ] gives a type mismatch 