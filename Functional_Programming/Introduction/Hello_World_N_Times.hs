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

helloworld n = putStrLn result
                where
                    string = "Hello World"
                    result = concat [string ++ "\n" | i<-[1..n]]

main :: IO()
main = do
    n <- readLn :: IO Int

    -- Print "Hello World" on a new line 'n' times.
    helloworld n
