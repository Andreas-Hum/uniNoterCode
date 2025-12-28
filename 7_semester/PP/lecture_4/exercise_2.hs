{-
(15 minutter) En pythagoræisk trippel er en trippel (a, b, c) af naturlige tal a, b, og c, s ̊aledes at
a ≤ b < c og a2+ b2= c2. Med andre ord, s ̊a betegner en trippel p ̊a denne form længderne af de
tre sider i en retvinklet trekant, hvor alle sider har heltallig længde. Den mindste pythagoræiske
trippel er (3, 4, 5).
Brug listeabstraktion til at definere en funktion pyt, der, n ̊ar den f ̊ar et heltal k, giver os en liste af
alle pythagoræiske tripler, hvis største element er højst k. Før du skriver definitionen af pyt, skal
du finde ud af, hvad dens type bør være.
-}

pyt :: Int -> [(Int, Int, Int)]
pyt n =
  [ (a, b, c)
    | a <- [1 .. n],
      b <- [1 .. n],
      a <= b,
      c <- [1 .. n],
      b < c,
      (a ^ 2 + b ^ 2) == c ^ 2
  ]


-- pyt :: Int -> [(Int, Int, Int)]
-- pyt n = [ (a, b, c) 
--         | c <- [1..n],      -- Start med den største (hypotenusen)
--           b <- [1..c-1],    -- b skal være mindre end c
--           a <- [1..b],      -- a skal være mindre end eller lig med b
--           a^2 + b^2 == c^2  -- Tjek ligningen
--         ]