{-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.
-}
chiphi :: Int -> Int -> Int ->Int -> String
chiphi hoc an thang ngansach =
  let hocphi = hoc *thang
      anphi = an*thang
  in if hocphi + anphi > ngansach then "Ban da tieu hoang "++ show (hocphi + anphi -ngansach) ++"USD" else "Ban da tietkiem "++ show (ngansach -hocphi - anphi) ++"USD"

