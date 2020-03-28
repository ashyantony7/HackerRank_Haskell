len :: [a] -> Int
len lst 
    | null lst = 0
    | otherwise = 1 + (len (tail lst))