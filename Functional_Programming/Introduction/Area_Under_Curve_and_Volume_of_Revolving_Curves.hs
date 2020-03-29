import Text.Printf (printf)

step = 0.001 :: Double

f :: Double -> [Int] -> [Int] -> Double
f x a b =  sum [a_i*(x**b_i) | (a_i, b_i)<- zip a_f b_f]
    where
        a_f = map fromIntegral a
        b_f = map fromIntegral b

heights :: Int -> Int -> [Int] -> [Int] -> [Double]
heights l r a b =  [f x a b | x<-[lf, lf+step..rf]]
    where
        lf = fromIntegral l
        rf = fromIntegral r

-- This function should return a list [area, volume].
solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve l r a b = [ sum $ map (*step) h_list, sum $ map (\x -> step*pi*(x**2)) h_list]
    where
        h_list = heights l r a b

--Input/Output.
main :: IO ()
main = getContents >>= mapM_ (printf "%.1f\n"). (\[a, b, [l, r]] -> solve l r a b). map (map read. words). lines