

import qualified Data.Map as M

data LockerState = Taken | Free deriving (Show, Eq)

type Code = String

type LockerMap = M.Map Int (LockerState, Code)
-- learn you a haskell for great good page 131
-- Either a b = Left a | Right b deriving (Eq, ord, Read, Show)
--        error use the left value here it is String
--        results use the right value here it is Code
-- 
lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup lockerNumber map = case M.lookup lockerNumber map of
    Nothing -> Left $ "Locker " ++ show lockerNumber ++ "doesn't exist!"
    Just (state, code) -> if state /= Taken
                            then Right code
                            else Left $ "Locker " ++ show lockerNumber ++ " is already taken!"


lockers :: LockerMap
lockers = M.fromList
    [(100,(Taken, "ZD391"))
    ,(101,(Free, "JAH31"))
    ,(102,(Taken, "AZU23"))
    ,(103,(Free, "ZZ2342"))
    ]

-- ghci> lA
lA = lockerLookup 101 lockers

lB = lockerLookup 100 lockers

 
