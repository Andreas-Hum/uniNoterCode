
-- THis function is parametrically polimorphic as a can take any type 
quango :: a -> [ a ] 
quango x = [x] 

-- This function requires the output to be of type Num, so float, double etc.
-- This function is a constant one as you cannot change the outcome of it
-- This function has both Overloading (ad hoc) as it requires p1 to follow the constraint of p1 :: Num
-- And parametetric because a,b and p2 does not have any constraints to follow
tango :: Num p1 => ( a , b ) -> p2 -> p1 
tango (x,y)z = 10

-- (lambda x.xy)(lambda z.(lambda u.uu))
-- beta reduction (lambda z.(lambda u.uu))y
-- beta reduction lambda u.uu
