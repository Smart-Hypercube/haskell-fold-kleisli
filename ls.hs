import RIO

f :: Int -> Int -> RIO Int Int
f a x = if x < -100 - a then throwString "err" else (x+) <$> ask

l = f <$> [1..4000000]

g = foldl' (>=>) pure l

main :: IO ()
main = do
    c <- readLn
    x <- readLn
    r <- runRIO c (g x)
    print r
