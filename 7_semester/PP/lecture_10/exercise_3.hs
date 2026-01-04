

instance Functor Exp where
    -- fmap :: (a -> b) -> Exp a -> Exp b
    
    -- Hvis vi finder en variabel, bruger vi funktionen f på den
    fmap f (Var a)      = Var (f a)
    
    -- En konstant (Val) indeholder ikke noget 'a', så den forbliver uændret
    fmap f (Val i)      = Val i
    
    -- Ved Add og Mult skal vi bruge fmap rekursivt på de indre udtryk
    fmap f (Add e1 e2)  = Add (fmap f e1) (fmap f e2)
    fmap f (Mult e1 e2) = Mult (fmap f e1) (fmap f e2)