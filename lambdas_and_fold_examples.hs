-- Collatz sequence
chain :: Integer -> [Integer]
chain 1 = [1]
chain n
    | even n = n:chain (n `div` 2)
    | odd n  = n:chain (n*3 + 1)
{-
   For all starting numbers between 1 and 100, how many 
   Collatz sequences have a length greater than 15
-}

numLongChains :: Int
numLongChains = length (filter isLong (map chain [1..1000]))
    where isLong xs = length xs > 15
-- now with lambda (\ looks like the greek letter for lambda)
numLongChains' :: Int
numLongChains' = length (filter (\xs -> length xs > 15) (map chain [1..100]))
-- we map the chain function to the list 
-- filter them by the predicate that checks whether a list's is longer than 15
-- length shows how many elements (collatz sequences) are in the list 

{- 
   People who don't understand how currying and partial
   application work often use lambdas where they are
   not necessary. 
   ghci> map (+3) [1,6,3,2]
   [4,9,6,5]
   ghci> map (\x -> x + 3) [1,6,3,2]
   [4,9,6,5]
-}

mymap :: (Num a) => [a] -> [a]
mymap [] = []
mymap (x:xs) = x+3 : mymap xs



