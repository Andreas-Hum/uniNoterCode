{-
  EXERCISE ANSWERS:

  1. What is the type of the function:
     dingo (x, y) = [x, y]

     ANSWER: dingo :: (a, a) -> [a]

  2. Explain your answer and how you found it.

     EXPLANATION:
     - The input is a tuple (x, y).
     - Because x and y are being placed into the same list [x, y], they MUST
       have the same type (Haskell lists are homogeneous). We call this type 'a'.
     - Therefore, the input type is (a, a).
     - The output is a list containing elements of type 'a'. In Haskell, the
       length of a list is not part of its type signature, so the output is
       simply represented as [a].

  3. Then (and only then) check your answer using the Haskell interpreter (:t dingo).

     CHECK: Running ':t dingo' in GHCi confirms:
     dingo :: (a, a) -> [a]

  4. Is the function polymorphic?

     ANSWER: Yes, it is Parametric Polymorphism.

     WHY: The function is parametrically polymorphic because it uses a type
     variable 'a' without any constraints (like Num or Eq). The logic of
     putting two items from a tuple into a list is identical regardless of
     what the actual data type is. It treats the data as a "black box."
-}

dingo :: (a, a) -> [a]
dingo (x, y) = [x, y]