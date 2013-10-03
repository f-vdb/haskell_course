{-- read liest einen string und gibt ein a zurueck
    das geht auch mit verschiedenen Typen wie float oder int
--}
--

main = do
    putStrLn "Enter a number"
    str <- getLine
    print (if read str >= 1.0 then 1 else 0)
