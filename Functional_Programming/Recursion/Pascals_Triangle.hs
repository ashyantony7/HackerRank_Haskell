import System.IO
import Control.Monad
import Data.List

pascal :: Int -> [Int]
pascal n
 | n==1 = [1]
 | otherwise = [head pascal_n_1] ++ (zipWith (+) (tail pascal_n_1) (init pascal_n_1))++ [last pascal_n_1]
 where
     pascal_n_1 = pascal (n-1)


main :: IO()
main = do
 -- Get the number
 n <- fmap (read :: String->Int ) getLine

 putStrLn $ intercalate "\n" $ [ intercalate " " $ map (show) $ pascal i | i<-[1..n]]