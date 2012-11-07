

name2reply :: String -> String
name2reply name =
    "Pleased to meet you, " ++ name ++ ".\n" ++
    "Your name contains " ++ charcount ++ " characters."
    where charcount = show (length name)


mySum :: Int -> Int -> Int
mySum a b = a + b

myAdd :: Int -> Int
myAdd a = a + a


main :: IO()
main = do
    putStrLn "Greetings once again. What is your name?"
    inpStr <- getLine

    let outStr = name2reply inpStr
    putStrLn outStr

    putStrLn "a: "
    aa <- getLine
    putStrLn "b: "
    bb <- getLine
  
    -- all three options are possible the last one is the shortest
    -- let add = myAdd (read(aa))
    -- let add = myAdd (read aa)
    -- let add = myAdd $ read(aa)
    
    let add = myAdd $ read aa

    let st = mySum 7 3

    putStrLn $ show add
    putStrLn $ show st

    let sum = mySum (read bb) (read aa)
    putStrLn (show sum)

