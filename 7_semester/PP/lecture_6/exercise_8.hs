{-
    Brug foldr til at definere en funktion remove, der tager to strenge som argumenter og fjerner hvert
    bogstav fra den anden streng, der forekommer i den første streng.
    Som eksempel skal remove ’’ first ’’ ”second’’ give os ’’ econd’’.
    Find først ud af, hvad funktionens type skal være.
-}

remove :: String -> String -> String
remove a b = foldr selector "" b
  where
    selector x xs
      | x `elem` a = xs
      | otherwise = x : xs
