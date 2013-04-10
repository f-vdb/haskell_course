
-- function mydouble takes an a and returns an a
-- and the a must be an instance of Num (class constraint)
mydouble :: Num a => a -> a
mydouble x = x + x

-- function mylist takes a list and returns a list
mylist :: Num a => [a] -> [a]
mylist [] = []      -- pattern matching: f gets an empty list and returns an empty list
mylist [x] = [x]    -- f gets a list with one element and returns a list with this element
mylist (x:xs) = [x] -- f gets a list and returns only the first element of the list

-- function mysum takes a list and return a value
-- and the a must be an instance of Num
mysum :: Num a => [a] -> a
mysum [] = 0
--mysum [x] = x this is redundant
mysum (x:xs) = x + mysum(xs) 

{- Notice: If we want to bind something to several variable (even if one of them is just _),
           we must surrond them in parenthese
-}               
            
sumfilter :: Integral a => [a] -> a -- even returns an Integral so we use the class constraint Integral
sumfilter [] = 0
sumfilter (x:xs) = sum (filter (even) (map (*3) (x:xs)))
-- e.g [1,2,3,4] [3,6,9,12] 18


-- Function Application $
-- Remember, how Astro said:"$ spart Klammern."
sumfilter' :: Integral a => [a] -> a
sumfilter' [] = 0
sumfilter' (x:xs)  = sum $ filter (even) $ map (*3) (x:xs)


-- Function Composition
-- Sure we can use lambdas for that, but many times, function composition is clearer.
mymap :: Num a => [[a]] -> [a]
mymap [] = []
mymap [[]] = []
mymap (x:xs) = map (negate . sum . tail) (x:xs)
-- e.g [[1..3],[3..6],[1..2]] -> [-5,-9,-2]

