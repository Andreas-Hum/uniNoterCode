{-
  EXERCISE: Why are function types not allowed in the Eq type class?
  
  ANSWER:
  Function equality is not allowed in Haskell for two primary reasons: 
  one theoretical (Undecidability) and one architectural (Referential Transparency).

  1. The Halting Problem & Undecidability (EQ_TM):
     To truly determine if two functions are equal, we must use "Extensional 
     Equality"—proving that for every possible input, both functions produce 
     the same output. As hinted by EQ_TM (the problem of testing if two Turing 
     Machines are equivalent), this is undecidable. 
     
     If we could write a general '==' operator for functions, we could 
     solve the Halting Problem. Since we cannot determine if a function will 
     eventually halt or loop forever, we cannot guarantee a result for a 
     functional equality check in finite time.

  2. Referential Transparency vs. Memory Addresses:
     One might suggest comparing functions by their memory addresses (Pointer 
     Equality). However, in a pure functional language like Haskell, this 
     violates "Referential Transparency." 
     
     Two functions with identical logic (e.g., \x -> x + 1) might be stored 
     at different addresses depending on compiler optimizations. If '==' 
     depended on addresses, the same logic could return 'True' or 'False' 
     randomly based on how the code was compiled, making the program 
     non-deterministic and untrustworthy.

  CONCLUSION: 
  Because there is no algorithm to safely and reliably prove function 
  equality, Haskell excludes function types from the Eq type class to 
  maintain the language's safety and mathematical integrity.
-}