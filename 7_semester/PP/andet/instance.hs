data BinTree a = Leaf a | Branch (BinTree a) (BinTree a) deriving (Show)

instance Functor BinTree where
  fmap :: (a -> b) -> BinTree a -> BinTree b
  fmap f (Leaf a) = Leaf (f a)
  fmap f (Branch l r) = Branch (fmap f l) (fmap f r)

instance Applicative BinTree where
  -- f(a->b) -> f a -> f b
  pure :: a -> BinTree a
  pure = Leaf
  (<*>) :: BinTree (a -> b) -> BinTree a -> BinTree b
  (Leaf f) <*> (Leaf x) = Leaf (f x)
  (Leaf f) <*> (Branch l r) = Branch (fmap f l) (fmap f r)
  (Branch fl fr) <*> x = Branch (fl <*> x) (fr <*> x)

data Box a = Box a deriving (Show)

instance Functor Box where
  fmap :: (a -> b) -> Box a -> Box b
  fmap f (Box a) = Box (f a)

instance Applicative Box where
  -- f(a->b) -> f a -> f b
  pure :: a -> Box a
  pure = Box
  (<*>) :: Box (a -> b) -> Box a -> Box b
  Box (f) <*> Box (a) = fmap f (Box a)
