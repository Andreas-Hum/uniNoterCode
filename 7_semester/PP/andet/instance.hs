data BinTree a = Leaf a | Branch (BinTree a, BinTree a) deriving (Show)

instance Functor BinTree where
  fmap :: (a -> b) -> BinTree a -> BinTree b
  fmap f (Leaf a) = Leaf (f a)
  fmap f (Branch (l, r)) = Branch (fmap f l, fmap f r)
