-- Curried Functons
-- ================

multThree :: Int -> Int -> Int -> Int
-- this is equal to Int -> (Int -> (Int -> Int))
multThree x y z = x * y * z

multTwoWithNine :: Int -> Int -> Int
multTwoWithNine = multThree 9

-- Sections
-- ========

{- Without Sections

isUpperAlphanum :: Char -> Bool
isUpperAlphanum c = c  `elem` ['A'..'Z']

-}

-- With Sections
isUpperAlphanum :: Char -> Bool
isUpperAlphanum =  (`elem` ['A'..'Z'])


{- Without Sections
divideByTen :: (Floating a) => a -> a
divideByTen a = a / 10
-}

-- With Sections
divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

