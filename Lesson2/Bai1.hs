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


{-- Question 2
-- Why should we define type signatures of functions? How can they help you? How can they help others?
-->Chữ ký có thể hạn chế các giá trị có thể nhập vào và ra cho một hàm, đảm bảo tính nhất quán hơn cho dữ liệu đầu vào và đầu ra


-- Question 3
-- Why should you define type signatures for variables? How can they help you?
--> Để hạn chế loại dữ liệu đầu vào này nhằm tránh các lỗi có thể sảy ra làm ứng dụng hoạt động ổn định hơn

-- Question 4
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.
--> Có chứ, ví dụ hàm f4 ở trên

-- Question 5
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?
-}

danhsach = [[1,2,3], [4,5,6], [7,8,9]]
pt = danhsach !! 2 !! 1