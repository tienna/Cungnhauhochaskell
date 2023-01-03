-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  

thuong ::Double -> Double -> String
thuong a b
 | a >b = if b /=0 then "Ket qua thuong la " ++ show (b/a) else "b=0"
 | b >a = if a /=0 then  "Ket qua thuong la " ++ show (a/b) else "a=0"
 | otherwise = if a /=0 then "Ket qua bang 1" else "Ca a va b =0"


--To pattern match on function definitions, we just have to define the same function multiple times, replacing the parameters with values. Like this:

specialBirthday :: Int -> [Char]
specialBirthday 1   = "First birthday!"
specialBirthday 18  = "You're an adult!"
specialBirthday 60  = "finally, I can stop caring about new lingo!"
specialBirthday age = "Nothing special"
{- 
[1,2,3,4] == 1:2:3:4:[]  -- True

"Hello!"  == 'H':'e':'l':'l':'o':'!':[]  -- True

-}