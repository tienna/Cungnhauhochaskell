
-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

monthlyUsage :: Float -> Float -> Float-> String
monthlyUsage kw h max 
  |usage < max = "Dung it hon han muc, Qua tot, sap giau roi"
  |usage == max = "Dung dung bang han muc, Tot lam"
  |otherwise = "Dung nhieu hon han muc, qua te"
  where usage = kw * h*30
  