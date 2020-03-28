fn n = [a | a<-[1..n]]

main = do
n <- readLn :: IO Int
print (fn(n))