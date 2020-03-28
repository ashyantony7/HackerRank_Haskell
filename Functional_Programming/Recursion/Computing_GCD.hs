module Main where
import System.IO

gcd' :: Integral a => a -> a -> a
gcd' n m =
    if (n==0 || m==0) 
    then n+m
    else if (n>m) 
    then gcd' m (n `mod` m)
    else gcd' n (m `mod` n)

-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main :: IO()
main = do
  input <- getLine
  print . uncurry gcd' . listToTuple . convertToInt . words $ input
 where
  listToTuple (x:xs:_) = (x,xs)
  convertToInt = map (read :: String -> Int)
