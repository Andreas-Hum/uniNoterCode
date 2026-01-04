data BTree a = Leaf a | Branch (BTree a) (BTree a) deriving (Show)

instance Functor BTree where
  fmap :: (a -> b) -> BTree a -> BTree b
  fmap f (Leaf a) = Leaf (f a)
  fmap f (Branch l r) = Branch (fmap f l) (fmap f r)

instance Applicative BTree where
  pure :: a -> BTree a
  pure = Leaf

  (<*>) :: BTree (a -> b) -> BTree a -> BTree b
  (Leaf f) <*> (Leaf x) = Leaf (f x)
  (Leaf f) <*> (Branch l r) = Branch (fmap f l) (fmap f r)
  (Branch fx fy) <*> x = Branch (fx <*> x) (fy <*> x)

instance Monad BTree where
  return :: a -> BTree a
  return = pure

  (>>=) :: BTree a -> (a -> BTree b) -> BTree b
  Leaf a >>= f = f a
  Branch l r >>= f = Branch (l >>= f) (r >>= f)