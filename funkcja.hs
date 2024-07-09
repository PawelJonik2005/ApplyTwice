applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)
main :: IO ()
main = do
    print $ applyTwice (+3) 10
    print $ applyTwice (++ " HAHA") "HEY"
    print $ applyTwice ("HAHA " ++) "HEY"
    let multThree a b c = a * b * c
    print $ applyTwice (multThree 2 2) 9
    print $ applyTwice (3:) [1]