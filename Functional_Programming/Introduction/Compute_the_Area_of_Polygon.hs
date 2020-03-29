import System.IO
import Control.Monad

type Point = (Int, Int)

cross_function :: Point -> Point -> Double
cross_function x y = fromIntegral $ (fst x)*(snd y) - (fst y)*(snd x)

-- Area of Polygon formula from here
-- https://www.mathopenref.com/coordpolygonarea.html
polygon_area :: [Point] -> Double
polygon_area points
    | (length points <3) = 0
    | otherwise = 0.5 *(abs $ sum $ zipWith (cross_function) points points_rotated)
    where
        points_rotated = drop 1 $ points ++ [head points]

main :: IO ()
main = do
 -- Get number of points
 n <- fmap (read :: String->Int ) getLine

 -- Read the points
 points <- forM [1..n] (\_->do 
     fmap ( (\[a, b]->(a,b)) . map (read :: String->Int) . words) getLine :: IO (Int, Int))

 putStrLn $ show $ polygon_area points
