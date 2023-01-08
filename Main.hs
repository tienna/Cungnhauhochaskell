{-and' :: [Bool] -> Bool
and' []     = True
and' (x:xs) = x && and' xs

drop' :: Int -> [a] -> [a]
drop' _ []     = []
drop' 0 xs     = xs
drop' n (_:xs) = drop' (n - 1) xs

reserve' :: [a] -> [a]
reserve' [] = []
reserve' (a:b) =  reserve' b

take' :: Int -> [a] -> [a]
take' n _ | n <=0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

fruitwA = filter finda ["Tao","Le","Chanh","Dao"]
 where finda  x = 'a' `elem` x

--inlonhon4 x = filter biggerthan4 x
--  where biggerthan4 x = x>4
inlonhon4 x = filter (\x -> x>4) x
 
lonhon4 x = any biggerthan4 x
  where biggerthan4 x = x>4
timcar cars= filter (\(_,x) -> x > 0) cars
dem x = length . filter (== x) $ votes



uncurry' :: (a ->b ->c) -> (a, b) ->c
uncurry' f (a,b) = f a b


curry' f a b = f (a,b)
-}



votes :: [String]
votes = ["Red", "Blue", "Green", "Blue", "Blue", "Red"]
countVotes :: String -> Int

countVotes color= length $ filter (\x -> x==color) votes
--countVotes color= length $ filter (==color) votes