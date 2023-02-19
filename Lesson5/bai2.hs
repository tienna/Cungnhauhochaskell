-- Create the `uncurry'` function that converts a curried function to a function on pairs. So this: `(+) 1 2` that returns `3` can be written as
-- `uncurry' (+) (1,2)` (with the two different arguments inside a pair).

uncurry' :: (a ->b ->c) -> (a, b) ->c
uncurry' f (a,b) = f a b