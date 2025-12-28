-- 1. Typen (Beholder Num a, som ministeren ønskede, men det virker for alle typer)
triples :: (Num a) => [(a, a, a)] -> ([a], [a], [a])
-- 2. Basistilfældet
-- Fejl rettet: Ministeren returnerede (), men vi skal returnere tre lister.
triples [] = ([], [], [])
-- 3. Det rekursive skridt
-- Fejl rettet: Input-mønsteret er nu ((x,y,z) : rest)
triples ((x, y, z) : rest) =
  let -- Vi henter de tre lister fra resten af inputtet
      (xs, ys, zs) = triples rest
   in -- Vi sætter x, y og z foran hver deres liste og returnerer en tuple
      (x : xs, y : ys, z : zs)