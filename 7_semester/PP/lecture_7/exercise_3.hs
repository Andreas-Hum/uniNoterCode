

{-
Influenceren tager grueligt fejl! Det, han kalder en "begrænsning" i Haskell, er i virkeligheden bare ham, der ikke har opdaget listens kraft endnu. Han prøver at bygge en manuel "trappe" (1 trin, 2 trin, 3 trin), i stedet for bare at bygge en "elevator", der kan køre til alle etager.

Her er en forklaring af, hvorfor hans løsning er dårlig, og hvordan du gør det på den "rigtige" Haskell-måde.

Hvad er galt med influencerns løsning?
Mangel på fleksibilitet: Hvis encyklopædien pludselig får en post med 4 underposter, "knækker" hans kode. Han skal manuelt ind og tilføje Node4, Node5 osv.

Gentagelse (Redundans): Han skriver String a i hver eneste linje. Det er spild af plads og gør koden svær at vedligeholde.

Logisk fejl: Han skelner mellem en Leaf og en Node. Men i en encyklopædi er en post med underposter og en post uden underposter i virkeligheden det samme – den ene har bare en tom liste af "børn".

Den bedre løsning: Listen er din ven
I stedet for at lave én constructor til hver mængde af børn, bruger vi en liste. En liste i Haskell kan nemlig have 0, 1, 2 eller 1.000 elementer.

Her er den elegante definition:

Haskell

data Encyclopedia a = Entry String a [Encyclopedia a]
    deriving (Show)
-}