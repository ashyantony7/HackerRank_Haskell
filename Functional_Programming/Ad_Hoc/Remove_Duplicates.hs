import System.IO
import Data.List

remove_duplicate [] = []
remove_duplicate (x:xs) = x:(remove_duplicate (filter (/=x) xs))

main :: IO ()
main = do
 
 input <- getLine

 putStrLn $ remove_duplicate input