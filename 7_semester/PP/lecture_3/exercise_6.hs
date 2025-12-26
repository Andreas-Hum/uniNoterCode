{-
    Write down a definition of a function bingo that has the following type; 
        it is not important what the definition does as long as it is type correct. 
        bingo : : a −> a Is bingo polymorphic? If it yes, 
        tell us if this is parametric polymorphism or overloading (ad hoc polymorphism). 
    If it is not, tell us why

    parametric polymorphism it is the identiy function it maps itself to itself 
    therefore the type must be the same as the imput thus a->a
-}

bingo :: a -> a
bingo x = x