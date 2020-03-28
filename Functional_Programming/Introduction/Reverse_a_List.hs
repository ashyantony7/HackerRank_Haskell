rev l = [l !! a | a<-[n, n-1..0]]
    where
        n= (length l) - 1