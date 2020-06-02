import System.IO
import Control.Monad

--- create an infinite list with lazy execution
fibo :: Num a => Int -> a
fibo n = fibs !! n
    where
        fibs = 0:1: zipWith (+) (fibs) (tail fibs)

main :: IO ()
main = do

    --- get the number of cases
    t <- readLn :: IO Int

    forM_ [1..t] $ \_ -> do

        n <- readLn :: IO Int
        
        putStrLn $ show $ (fibo t) `mod` (10^8 + 7)