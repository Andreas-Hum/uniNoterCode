data Onion a = Core a | Layer (Onion a)

instance Functor Onion where
  fmap :: (a -> b) -> Onion a -> Onion b
  fmap f (Core a) = Core (f a)
  fmap f (Layer a) = Layer (fmap f a)

    