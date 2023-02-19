-- Question 6
-- write a case expression wrapped in a function that takes an Int and adds one if it's even. Otherwise does nothing. 
-- (Use the `even` function to check if the number is even.)
toEven :: Int -> Int
toEven a = case even a of 
  True  -> a
  False -> a +1
 