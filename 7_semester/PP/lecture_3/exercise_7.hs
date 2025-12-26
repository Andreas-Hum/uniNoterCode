{-
    Suppose you want to define a function thesame that takes a list of pairs xs
    and gives us the list of pairs whose first and second component are the same.
    For example, we want the function application
        thesame [(1, 2), (4, 4), (6, 7), (17, 17)]
        to return the value [(4, 4), (17, 17)]
    What should the type of thesame be?

    thesame :: Eq a => [(a,a)] -> [(a,a)]
-}

thesame :: Eq b => [(b, b)] -> [(b, b)]
thesame xs = [(x, y) | (x, y) <- xs, x == y]

