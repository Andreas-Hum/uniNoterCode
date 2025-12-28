{-
    10 minutter) Vis, hvordan meningen med følgende curriede funktionsdefinition kan udtrykkes
    ved hjælp af lambda-udtryk i Haskell (der er mere end  ́et korrekt svar!).
    plonk x y z = x+y+z
    Find ud af typen af plonk uden at spørge Haskell-fortolkeren.
-}

plonk :: Num a => a -> a -> a -> a
plonk = \x -> (\y -> (\z -> x + y + z))
-- smallPlonk = \x,y,z -> x+y+z