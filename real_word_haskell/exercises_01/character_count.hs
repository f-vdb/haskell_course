-- file: ch01/wc.hs
-- lines beginning with "--" are comments

-- count newlines too
main = interact wordCount
   where wordCount input = show (doNothing(length input)) ++ "\n"
         doNothing x = x + 0




