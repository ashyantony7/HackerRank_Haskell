import System.IO
import Control.Monad

-- perfrom rotation in a recursive way
rotate :: (Eq t, Num t)=>[Char]->t->[Char]
rotate (x:xs) n
    | n==0 = ""
    | otherwise = (xs ++ x:[]) ++ " " ++ (rotate (xs ++ x:[]) (n-1))

main :: IO ()
main  = do

    -- read the number of cases
    t <- readLn :: IO Int

    -- for each input perfrom the following
    forM_ [1..t] $ \_ -> do
        input <- getLine
        putStrLn $ rotate input (length input)