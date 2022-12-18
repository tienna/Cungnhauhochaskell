-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- (Use the types presented in the lecture.)
f1 :: Float -> Float -> Float ->Float
f1 x y z = x ** (y/z)

f2 :: Double -> Double -> Double -> Double
f2 x y z = sqrt (x/y - z)

f3 :: Bool -> Bool -> [Bool]
f3 x y = [x == True] ++ [y]
-- Chua hieu == True de lam gi???

f4:: [Int] -> [Int] ->[Int] -> Bool
f4 x y z = x == (y ++ z)
