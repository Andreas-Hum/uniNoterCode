{-
20 minutter) Typen for ubegrænsede træer UTree er givet ved
data UTree a = Node a [ UTree a ]
Defin ́er en instans af Functor for UTree.
-}

data UTree a = Node a [UTree a]

instance Functor UTree where
  fmap :: (a -> b) -> UTree a -> UTree b
  fmap f (Node a children) = Node (tansformed_node) (transformed_children)
    where
      tansformed_node = f a
      transformed_children = map (fmap f) children