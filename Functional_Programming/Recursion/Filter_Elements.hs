import System.IO
import Control.Monad
import Data.List
import Data.Function

-- filter elements based on length
filter_elements :: [[a]] -> Int -> [a]
filter_elements p k = [head x | x<-p, (length x) >=k]

-- sort by the second element in tuple
sndSort :: Ord b => [(a, b)] -> [(a, b)]
sndSort = sortBy (compare `on` snd)


main :: IO ()
main = do

    -- get the number of cases
    t <- readLn :: IO Int

    -- for all the inputs do the following
    forM_ [1..t] $ \_ -> do

        k <- fmap (map(read::String->Int) . words) getLine

        input <- fmap ( map(read::String->Int) . words) getLine

        -- add position information
        let pair = zip input [1..]

        -- sort by value while preserving position
        let sorted_pair = sort $ pair

        -- group elements by value
        let counts = groupBy ((==) `on` fst) sorted_pair

        -- flter elements to the count and then sort the values to postion 
        ---and remove position information
        let res = map (fst) $ sndSort $ filter_elements counts (k !! 1)

        -- print result
        if  res==[]
        then putStrLn "-1"
        else putStrLn $ intercalate " " $ (map (show) res)