-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?
-- nested :: [([Int], [Int])]
-- nested = [([1,2],[3,4]), ([5,6],[7,8])]

pick4 ::[([Int], [Int])] -> Int
-- solution 1: 
-- pick4 [([_,_],[_,x]),_] = x
-- solution 2:
pick4 [(_,[_,x]),_] = x