

loop :: Int -> IO()
loop 10 = do
          print (10*10)
          return ()
loop n = do
         print (n*n)
         loop (n+1)

loop' :: Int -> IO()
loop' n = do
    if n <= 10
    then do
        putStrLn (show (n * n))
        loop' (n + 1)
    else
        return ()

main :: IO()
main = do 
     loop 1
     loop' 1
