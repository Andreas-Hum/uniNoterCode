{-
 Skriv en rekursiv funktion sumInts :: Integer −>IO Integer, der gentagne gange læser heltal fra
 input, indtil tallet 0 indtastes. N ̊ar det sker, returnerer funktionen summen af alle de indtastede tal
 plus den oprindelige (standard)værdi, som er givet som det første argument til sumInts
 -}

sumInts :: Integer -> IO Integer
sumInts currentSum = do
  input <- getLine
  let n = read input :: Integer
  if n == 0
    then do
      return currentSum
    else do
      sumInts (n + currentSum)
