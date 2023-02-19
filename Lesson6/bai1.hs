-- Question 1
-- Write a function called `repeat'` that takes a value and creates an infinite list with
-- the value provided as every element of the list.
--

repeat' :: a -> [a]
--repeat' x = x : repeat' x
--repeat' [] = []
repeat' x = [x] ++ repeat' x