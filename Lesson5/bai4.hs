




-- Use higher-order functions, partial application, and point-free style to create a function that checks if a word has an uppercase letter.
-- Start with using just higher-order functions and build from there. 
hasUppercase :: [Char] -> Bool
hasUppercase a = any (\a ->a `elem` ['A'..'Z']) a