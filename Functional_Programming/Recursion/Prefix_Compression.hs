import System.IO
import Data.List

prefix :: String -> String -> String
prefix (x:xs) (y:ys)
    | xs == [] || ys == [] = x:[]
    | otherwise = if (x == y) then x:(prefix xs ys)
                    else []


main :: IO ()
main = do
    string1 <- getLine
    string2 <- getLine

    let pre = prefix string1 string2
    let post1 = drop (length pre) string1
    let post2 = drop (length pre) string2

    putStrLn $ (show $ length pre) ++ " " ++ pre
    putStrLn $ (show $ length post1) ++ " " ++ post1
    putStrLn $ (show $ length post2) ++ " " ++ post2
    