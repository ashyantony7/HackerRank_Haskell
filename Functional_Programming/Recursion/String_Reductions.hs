import System.IO
import Data.List

remove_repeat [] = []
remove_repeat (x:xs) = x:(remove_repeat (filter (/=x) xs))

main :: IO ()
main = do
 
 input <- getLine

 putStrLn $ remove_repeat input
