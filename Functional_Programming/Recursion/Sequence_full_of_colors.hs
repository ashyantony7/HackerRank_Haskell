import System.IO
import Control.Monad

sequence_check :: (Ord a1, Ord a2, Num a1, Num a2) => [Char] -> a1 -> a2 -> Bool
sequence_check [] rb yb =  (rb == 0) && (yb == 0)
sequence_check (x:xs) rg yb
    | (rg > 1) || (rg < -1) = False
    | (yb > 1) || (yb < -1) = False
    | x == 'R' = sequence_check xs (rg+1) yb
    | x == 'G' = sequence_check xs (rg-1) yb
    | x == 'Y' = sequence_check xs rg (yb+1)
    | x == 'B' = sequence_check xs rg (yb-1)


main :: IO ()
main = do

    --- get the number of cases
    t <- readLn :: IO Int

     -- for all the inputs do the following
    forM_ [1..t] $ \_ -> do

        --- get input string
        input <- getLine
        
        --- check for condition and show output
        putStrLn $ show $ sequence_check input 0 0