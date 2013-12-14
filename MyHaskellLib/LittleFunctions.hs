-- the n + k pattern was removed from the language
-- in 2010
-- add the n plus k pattern to the language
{-# LANGUAGE NPlusKPatterns #-}


-- modules must start with an uppercase letter
module MyHaskellLib.LittleFunctions
-- export only the add function
--( add ) where

-- export all
where

add :: Float -> Float -> Float
add a b = a + b

mydrop :: Int -> [a] -> [a]
mydrop n xs | n <= 0 = xs
mydrop _ []          = []
mydrop n (_:xs)      = drop (n-1) xs


nkdrop 0 xs = xs
nkdrop (n+1) [] = []
nkdrop (n+1) (_:xs) = nkdrop n xs

-- example to understand the n + k pattern
-- if you call foo 7, the first pattern matches and
-- n will be bound to 2, so foo 7 = 6.
-- If you call foo 3, the first pattern doesn't
-- match (3-5 = -2 < 0), but the second does, 
-- and that binds n to 3-2 = 1, hence foo 3 = 1. 
-- If you call foo 1, neither of the first two 
-- patterns matches, but the last does, and then 
-- n is bound to 1 - 1 = 0, so foo 1 = 0. 
-- Calling foo with an argument < 1 raises an 
-- exception.
foo :: Int -> Int
foo (n+5) = 3 * n
foo (n+2) = n
foo (n+1) = 2 * n
