data Status a = Frisk a | Brugt a deriving (Show)

instance Functor Status where
  fmap :: (a -> b) -> Status a -> Status b
  fmap f (Frisk x) = Frisk (f x)
  fmap f (Brugt x) = Frisk (f x)

instance Applicative Status where
  -- f(a->b) -> f a -> f b
  pure :: a -> Status a
  pure = Frisk

  (<*>) :: Status (a -> b) -> Status a -> Status b
  (Frisk f) <*> (Frisk a) = Frisk (f a)
  (Frisk f) <*> (Brugt a) = Frisk (f a)
  (Brugt f) <*> (Frisk a) = Frisk (f a)
  (Brugt f) <*> (Brugt a) = Frisk (f a)

instance Monad Status where
  return :: a -> Status a
  return = pure
  (>>=) :: Status a -> (a -> Status b) -> Status b
  (Frisk x) >>= f = f x
  (Brugt x) >>= f = f x

minimer :: (Ord b) => Status b -> Status b -> Status b
minimer x y = x >>= \a -> y >>= \b -> return (min a b)

data Person = P String Bool deriving (Show, Eq)

data Family = Enlig Person | Par Person Person deriving (Show, Eq)

data Dynasty = D Family [Dynasty] deriving (Show, Eq)

isFamous :: Family -> Bool
isFamous (Enlig (P _ b)) = b
isFamous (Par (P _ b1) (P _ b2)) = b1 && b2

isAllFamous :: Dynasty -> Bool
isAllFamous (D fam børn) = isFamous fam && all isAllFamous børn

moderne :: Dynasty -> Bool
moderne (D fam børn)
  | isFamous fam = all isAllFamous børn
  | otherwise = all moderne børn

kvadrat = [x^3 | x <- [1..]]
-- >>> take 5 kvadrat
-- [1,8,27,64,125]
