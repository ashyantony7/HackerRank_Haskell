import System.IO
import Control.Monad
import Data.List

-- swap values based on recursion
swap_string [] = []
swap_string (x:y:xs) = y:x:(swap_string xs)

main :: IO ()
main = do
 
 -- number of cases
 t <- fmap (read::String-> Int) getLine

 -- get the input strings
 inputs <- forM [1..t] (\_ -> do getLine)

 -- swap the strings and combine them with intercalate
 putStrLn $ intercalate "\n" [swap_string x | x <- inputs]