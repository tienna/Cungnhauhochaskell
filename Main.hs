repeat' :: a -> [a]
--repeat' x = x : repeat' x
--repeat' [] = []
repeat' x = [x] ++ repeat' x



-- Using the `repeat'` function and the `take` function we defined in the lesson (comes with Haskell),
-- create a function called `replicate'` that takes a number `n` and a value `x` and creates a list
-- of length `n` with `x` as the value of every element. (`n` has to be Integer.)
--
-- >>> replicate 0 True
-- []
-- >>> replicate (-1) True
-- []
-- >>> replicate 4 True
-- [True,True,True,True]

replicate' ::Int ->a ->[a]
replicate' 0 a =[]
replicate' (-1) a = []
--replicate' n a = a: replicate' (n-1) a
replicate' n a = take n $ repeat' a


 -- Question 3
-- Write a function called `concat'` that concatenates a list of lists.
--
-- >>> concat' [[1,2],[3],[4,5,6]]
-- [1,2,3,4,5,6]
concat' :: [[a]]->[a]
concat'  = foldl(++) []
