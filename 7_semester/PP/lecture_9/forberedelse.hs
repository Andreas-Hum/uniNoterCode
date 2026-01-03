{-
Skriv et Haskell-program, der spørger efter brugerens navn og derefter siger ”Hej” efterfulgt af
brugerens navn. Det, vi gerne vil have, er denne adfærd:
∗Main>h e j
Hvad e r d i t navn ?
Graham
Hej Graham
∗Main>
-}

main :: IO ()
main = do
  putStrLn "Hej"
  putStrLn "Hvad er dit navn?"
  name <- getLine
  putStrLn ("Hej " ++ name)
  return ()