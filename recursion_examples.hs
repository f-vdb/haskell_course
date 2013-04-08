
-- Examples of recursive functions

{-    ghci> :t (:)
      (:) :: a -> [a] -> [a]    -}


myreverse :: [a] -> [a]
myreverse [] = []
myreverse (x:xs) = myreverse xs ++ [x]
-- myreverse (x:xs) = (myreverse xs) ++ [x]
-- there is no need for the parantheses


myrepeat :: a ->[a]
--myrepeat x = x:myrepeat x
-- or
myrepeat x = [x] ++ myrepeat x
