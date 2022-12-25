-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  

thuong ::Double -> Double -> String
thuong a b
 | a >b = if b /=0 then "Ket qua thuong la " ++ show (b/a) else "b=0"
 | b >a = if a /=0 then  "Ket qua thuong la " ++ show (a/b) else "a=0"
 | otherwise = if a /=0 then "Ket qua bang 1" else "Ca a va b =0"
