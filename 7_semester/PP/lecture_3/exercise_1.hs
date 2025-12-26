{-
  EXERCISE ANSWERS:
  
  1. What is the type of the function:
     twice f x = f (f x)
     
     ANSWER: twice :: (a -> a) -> a -> a
     
  2. Explain your answer and how you found it.
  
     EXPLANATION: 
     We look at the expression f (f x) from the inside out:
     - x is the input to f, so if x :: a, then f must take an 'a'.
     - The result of (f x) is then passed back into f. For this to be valid, 
       the output of f must match its input type. Therefore, f :: a -> a.
     - The function 'twice' takes two arguments: the function f and the value x.
     - This results in: (a -> a) [Argument 1] -> a [Argument 2] -> a [Result].

  3. Then (and only then) check your answer using the Haskell interpreter (:t twice).
  
     CHECK: Running ':t twice' in GHCi confirms: 
     twice :: (a -> a) -> a -> a

  4. Is the function polymorphic? 
     
     ANSWER: Yes, it is Parametric Polymorphism.
     
     WHY: It is parametric because the type variable 'a' is unconstrained. 
     The function does not use any type-specific operations (like addition or 
     equality checks), so it works identically for any type. It does not 
     require a type class (which would make it ad-hoc).

  5. What about the type of the function:
     twicetwo (f, x) = f (f x)
     
     ANSWER: twicetwo :: (a -> a, a) -> a
     
     EXPLANATION: Unlike the curried 'twice', this function takes its 
     arguments as a single package (a tuple). The logic inside is the same, 
     but the input is now a pair containing the function and the value.
-}

twice :: (t -> t) -> t -> t
twice f x = f (f x)

twicetwo :: (t -> t, t) -> t
twicetwo (f,x) = f(f x)