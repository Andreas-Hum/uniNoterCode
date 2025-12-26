{-
Here is the definition of a Haskell function. madras (f,x,y) = f (f x x) y 
Give a curried version of madras that has type (t −> t −> t)−> t −> t −> t,
-}

madras :: (t -> t -> t, t, t) -> t
madras (f,x,y) = f (f x x) y 

madras2 :: (t -> t -> t) -> t -> t -> t
madras2 f x y = f (f x x)y -- can be eta reduced to madras2 f x = f (f(x)x)