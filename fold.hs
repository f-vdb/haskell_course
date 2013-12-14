import Prelude hiding (foldr, foldl)

veryBigList = [1..50000000]

foldr f z []     = z
foldr f z (x:xs) = f x (foldr f z xs)
sum1 = foldr (+) 0
try1 = sum1 veryBigList


foldl f z []     = z
foldl f z (x:xs) = let z' = z `f` x
                   in foldl f z' xs
sum2 = foldl (+) 0
try2 = sum2 veryBigList
