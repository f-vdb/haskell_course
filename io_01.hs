

-- this is a stupid commentar
-- oh here it goes on


main = do
       putStrLn "Greetings! What is your favorite colour? "
       inpStr <- getLine
       putStrLn ("Hey, your favorite colour is " ++ inpStr ++ "!")

       -- with the $ we can save the parenthese
       putStrLn $ "Hey, your favorite colour is " ++ inpStr ++ "!"



