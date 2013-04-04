myreverse :: [a] -> [a]
myreverse [] = []
myreverse (x:xs) = myreverse xs ++ [x]
-- myreverse (x:xs) = (myreverse xs) ++ [x]
-- there is no need for the paranthese
