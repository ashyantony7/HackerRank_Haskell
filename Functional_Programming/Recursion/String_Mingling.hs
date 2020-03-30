import System.IO
import Data.List

main :: IO()
main = do

    -- get first string
    string1 <- getLine

    -- get second string
    string2 <- getLine

    -- use list comprehension to combine characters
    -- use concat to combine to a single string
    putStrLn $ concat $ [x:y:[] | (x, y) <- zip string1 string2]
