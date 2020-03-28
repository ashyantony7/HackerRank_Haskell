{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

module Main where

import Control.Monad
import Data.Array
import Data.Bits
import Data.List
import Data.Set
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe

fac:: Double -> Double
fac x 
  | x==0 = 1
  | otherwise = product [1..x]

e_x:: Double -> Double
e_x x = sum [ (x**i)/(fac i) | i<-[0..9] ]

main :: IO()
main = do
 n <- readLn :: IO Int

 forM_ [1..n] $ \n_itr -> do
    x <- readLn :: IO Double
    print (e_x x)