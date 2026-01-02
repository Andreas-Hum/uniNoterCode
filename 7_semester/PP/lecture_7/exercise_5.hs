{-
(20 minutter) Fra lineær algebra ved vi, at et vektorrum med indre produkt er et rum, for hvilket
operationerne vektorsum og indre produkt1 er defineret. Givet to vektorer v1 og v2, er summen
v1 + v2 igen en vektor, og det indre produkt v1 ·v2 er et tal. Vær opmærksom p ̊a: I lineær algebra
er der meget mere til definitionen af indre produkt rum end disse to krav, men i denne opgave skal
du ignorere det. Antag ogs ̊a, at det indre produkt er et tal af typen Int.
• Defin ́er en typeklasse InVector, hvis instanser er typer, der kan betragtes som indre produkt
rum, hvor vektorsum kaldes &&& og indre produkt kaldes ∗∗∗. Hint: Hvilket afsnit i bogen
har du brug for her?
• Find ud af, hvordan du erklærer Bool som en instans af InVector. Hint: Du skal finde en
definition af vektorsum og indre produkt for sandhedsværdier.
-}

-- Vi skal bruge fromEnum til at lave Bool om til Int
-- fromEnum True = 1, fromEnum False = 0

class InVector a where
  (&&&) :: a -> a -> a
  (***) :: a -> a -> Int

instance InVector Bool where
  (&&&) :: Bool -> Bool -> Bool
  x &&& y = x || y
  (***) :: Bool -> Bool -> Int
  x *** y = fromEnum (x && y)

instance (InVector a) => InVector (a, a, a) where
  (&&&) :: (InVector a) => (a, a, a) -> (a, a, a) -> (a, a, a)
  (x1, x2, x3) &&& (y1, y2, y3) = (x1 &&& y1, x2 &&& y2, x3 &&& y3)
  (***) :: (InVector a) => (a, a, a) -> (a, a, a) -> Int
  (x1, x2, x3) *** (y1, y2, y3) = (x1 *** y1) + (x2 *** y2) + (x3 *** y3)