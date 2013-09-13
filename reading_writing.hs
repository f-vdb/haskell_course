import System.IO
myprint :: Handle -> IO ()
myprint handle = do
    contents <- hGetContents handle
    putStr contents

main = do

    handle <- openFile "girlfriend.txt" ReadMode
    contents <- hGetContents handle
    putStr contents
    hClose handle

    putStr("\n")

    withFile "girlfriend.txt" ReadMode (\handle -> do
            contents <- hGetContents handle
            putStr contents)

    putStr("\n")

    withFile "girlfriend.txt" ReadMode myprint

    putStr("\n")




