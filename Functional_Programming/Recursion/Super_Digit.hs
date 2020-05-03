import System.IO
import Data.List
import Data.Char

-- Function to convert into digits
digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

-- sum of two numbers with mod 9
modSum :: Integral a => a -> a -> a
modSum x y
    | n < 10 = n
    | otherwise = n-9
        where n = x + y

-- super digit of a number
superDigit :: (Foldable t, Integral a) => t a -> a
superDigit x = foldl1 (modSum) x
 
main :: IO ()
main = do

    -- get the input
    input <- fmap (words) getLine

    -- list of digits
    let digit_list = map (digitToInt) $ input !! 0
    
    -- concatenation times
    let mult = map (read::String->Int) input !! 1

    -- multiply with concatenation times
    let superD1 =  (superDigit digit_list) * mult

    -- super digit of result
    putStrLn $ show $ superDigit $ digs superD1