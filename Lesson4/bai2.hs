-- Question 2
-- Write a function that takes a list of elements of any type and
-- if the list has 3 or more elements, it removes them. Else, it does nothing. Do it two times, one with multiple function definitions and one with
-- case expressions.
removeElement :: [Int] -> String
{-removeElement [] = "Khong co phan tu nao"
removeElement [x] = "Phan tu duy nhat la " ++ show x
removeElement [x,y] = "List co 02 phan tu duy nhat la: " ++show x  ++" "++show y
--removeElement (a:as) = "phan con lai a: " ++show a   ++"--"++show as
--removeElement (x:y:xs) = "Hai phan tu la: " ++ show x ++" va " ++ show xs  
-}
removeElement (_:_:ab) = "Phan tu thu 3 tro di gom co: " ++ show ab



remove3 :: [Int] -> String
remove3 list = case list of
  (_:_:xs) -> "Phan tu thu 3 tro di gom co: " ++ show xs