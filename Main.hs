-- Question 5
-- Write a function that takes in two numbers and calculates the sum of squares for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block. 
tongbpthuongtich :: Double -> Double -> String
tongbpthuongtich  a b =
 let   ve1 = bpthuong where bpthuong = (a*b)^2
 in show (ve1 + ve2)
 where ve2 = let thuong = (a/b) in thuong^2
