

import qualified Data.Map as Map


phoneBook = 
    [("betty", "555-2938")
    ,("bonnie", "452-2928")
    ,("lucille", "205-2928")
    ]


findKey :: (Eq k) => k -> [(k, v)] -> Maybe v
findKey key [] = Nothing
findKey key ((k,v):xs)
                  | key == k = Just v
                  | otherwise = findKey key xs

{-
    It's usually better to use folds for this standard list recursion pattern,
    rather then explicity writing the recursion, because it is easier to read
    and identify.
    -}



findKey' :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey' key xs = foldr (\(k,v) acc -> if key == k then Just v else acc) Nothing xs
-- foldr => accumulator right
-- foldl => accumulator left
--
-- ghci> findKey "betty" phoneBook

{-
    The findkey function is the implementation of the lookup function
    from the standard library of the Data.map module which is much faster.
    -}

phoneBook' :: Map.Map String String
phoneBook' = Map.fromList $
    [("betty", "555-2938")
    ,("bonnie", "452-2928")
    ,("lucille", "205-2928")
    ]

{-
    ghci>:t Map.lookup
    Map.lookup :: (Ord k) => k -> Map.Map k a -> Maybe a
    ghci> Map.lookup "betty" phoneBook'
    -}

newBook = Map.insert "grace" "111-1111" phoneBook'

size = Map.size newBook





