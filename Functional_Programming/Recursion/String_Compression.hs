import System.IO
import Data.List

main = do

    -- get input line
    input <- getLine

    -- group the characters
    let input_g = group input
    
    -- get the length of the groupings also remove 1
    let input_l = map ( (\x -> if x=="1" then "" else x). show . length) input_g 

    -- combine them and output
    putStrLn $ concat [[head x] ++ y | (x, y) <- zip input_g input_l]
