{-
Lad r være en given type. Funktionstypekonstruktøren Arrow−r er defineret, s ̊a Arrow−
r a bliver (r −> a). Defin ́er en instans af Functor for denne typekonstruktør. Hint: Kig
p ̊a typen af fmap.
For at teste din løsning, tilføj følgende i starten af filen, der indeholder din kode:

-}

instance Functor ((->) r) where
    -- Version 1: Ved hjælp af en lambda-funktion
    fmap g h = \x -> g (h x)

    -- Version 2: Ved hjælp af funktionskomposition (mest brugt)
    -- fmap g h = g . h