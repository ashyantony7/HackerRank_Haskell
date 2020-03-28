import Control.Monad
import Data.List

-- number of unique mappings
mappings key pairs =  nub $ filter ((==key). fst) pairs

-- function checks if any key has more than one unique mapping
func :: [(Int, Int)] -> Bool
func f =  not $ any ((>1) . number_mapping . fst ) f
    where 
        number_mapping x = length $ mappings x f

main = do

    -- get number of cases
    t <- fmap (read::String->Int) getLine

    -- do for each case
    forM [1..t] (\_->do
        
        -- number of value pairs
        n <- fmap (read::String->Int) getLine
        
        -- value pair to a list
        values <- forM [1..n] (\_->do fmap ((\[a, b]->(a,b)).map (read::String->Int).words) getLine :: IO (Int, Int))
        
        -- write out output
        putStrLn $ if func values then "YES" else "NO")
