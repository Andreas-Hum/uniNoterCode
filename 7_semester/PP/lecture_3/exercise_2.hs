{-
  EXERCISE: λ-calculus Bound Variables and Reduction
  
  1. Consider the following term:
     (λx.xx)(λx.xx)
     
  2. Are the bound variables in the term distinct?
    the bound variables are not distinct as they are within their own scopes 
    they can therefore be renamed with alpha conversion

  
  3. If they are not distinct, rename them (using α-conversion) such that 
     they become distinct.

      -α conversion we rename one (λx.xx)(λy.yy)
     
  4. Once you have made the variables distinct, find a reduction step 
     (β-reduction) that the term can take.
    
      -β-reduction (λx.xx)(λy.yy) we replace all accurences of x with λy.yy
      (λy.yy)(λy.yy) this is the omega lambda expression 

     
  5. Use the reduction rules provided in your notes to perform the step.

    this is the omega lambda expression and is the smallest example of an infinite loop it can be reduced forever
-}
