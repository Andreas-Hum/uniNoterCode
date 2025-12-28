{-
  1. Definer, ved hjælp af mønstermatchning og uden at bruge længdefunktionen, en funktion onlytwo, 
  der fortæller os, om en liste har præcis to elementer – i hvilket tilfælde den skal returnere True – eller ej, 
  i hvilket tilfælde den skal returnere False. 
  Hvad er typen af onlytwo? 
  
  2. Prikproduktet af to talpar (a, b) og (c, d) er tallet a · c + b · d. Definer, 
  ved brug af listeabstraktion, en funktion alldots , der tager to lister af talpar og returnerer 
  alle mulige prikprodukter af hvert par fra den første liste og hvert par fra den anden liste. Find to gode testcases 
  til at afprøve din funktion og brug dem til at teste din kode. Hvad er typen af alldots ? 1
-}


onlyTwo :: [a] -> Bool
onlyTwo [x,y] = True
onlyTwo _ = False


alldots :: Num a => [(a,a)]->[(a,a)]->[a]
alldots xs ys = [x_1*x_2+y_1*y_2| (x_1,y_1) <- xs, (x_2,y_2) <-ys ] 

