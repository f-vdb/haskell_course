-- The function return the k least-valued elemnts
-- of an unsorted list

import Data.List

x = [100,99..1]

minima k xs = take k (sort xs)
