import System.IO
import System.IO.Error
import System.IO.Unsafe
import Control.Monad

type Point = (Int, Int)

distance :: Point -> Point -> Double
distance x y = sqrt $ (fromIntegral (fst x - fst y))**2 + (fromIntegral (snd x - snd y))**2

perimeter :: [Point] -> Double
perimeter points = sum $ zipWith (distance) points points_rotated
    where
        points_rotated = drop 1 $ points ++ [head points]

main :: IO()
main =do
 -- Get number of points
 n <- fmap (read :: String->Int ) getLine

 -- Read the points
 points <- forM [1..n] (\_->do 
     fmap ( (\[a, b]->(a,b)) . map (read :: String->Int) . words) getLine :: IO (Int, Int))

 -- get points and store it
 putStrLn $ show $ perimeter points
 