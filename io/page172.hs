
{-
   take some input and prints out only
   those lines that are shorter than 10 character
   -}


main = do
   contents <- getContents
   putStr (shortLinesOnly contents)

shortLinesOnly :: String -> String
shortLinesOnly = unlines . filter (\line -> length line < 10) . lines

