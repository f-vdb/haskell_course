myrepeat :: a ->[a]
--myrepeat x = x:myrepeat x
-- or
myrepeat x = [x] ++ myrepeat x
