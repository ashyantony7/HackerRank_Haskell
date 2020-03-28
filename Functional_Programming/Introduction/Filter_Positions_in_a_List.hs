f :: [Int] -> [Int]
f lst = [ lst !! a | a<-[1,3..n]]
    where
        n = (length lst) - 1

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
 inputdata <- getContents
 mapM_ (putStrLn. show). f. map read. lines $ inputdata