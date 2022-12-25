-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.


monthlyUsage :: Float -> Float -> Float-> String
monthlyUsage kw h max 
  |usage < max = "Dung it hon han muc, Qua tot, ban da tiet kiem " ++ show (max - usage) ++"KW cho thang nay"
  |usage == max = "Dung dung bang han muc, Tot lam"
  |otherwise = "Dung nhieu hon han muc, qua te, ban da dung qua " ++ show (usage - max) ++"KW cho thang nay"
  where usage = kw * h*30