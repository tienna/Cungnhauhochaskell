
{-repeat' :: a -> [a]
--repeat' x = x : repeat' x
--repeat' [] = []
repeat' x = [x] ++ repeat' x
-}

-- Question 1
-- Investigate the `Bounded` type class. What behaviours it provides?
ghci> :i Bounded
type Bounded :: * -> Constraint
class Bounded a where
  minBound :: a
  maxBound :: a


-- Question 2
-- The types Int and Word bellong to the same type classes. What is the difference
-- between them? Check maybe the maxBound and minBound parameter for both types.
ghci> :i Word
type Word :: *
data Word = GHC.Types.W# GHC.Prim.Word#
        -- Defined in `GHC.Types'
instance Integral Word -- Defined in `GHC.Real'
instance Num Word -- Defined in `GHC.Num'
instance Real Word -- Defined in `GHC.Real'
instance Bounded Word -- Defined in `GHC.Enum'
instance Enum Word -- Defined in `GHC.Enum'
instance Eq Word -- Defined in `GHC.Classes'
instance Ord Word -- Defined in `GHC.Classes'
instance Read Word -- Defined in `GHC.Read'
instance Show Word -- Defined in `GHC.Show'
ghci>
ghci> :i Int
type Int :: *
data Int = GHC.Types.I# GHC.Prim.Int#
        -- Defined in `GHC.Types'
instance Integral Int -- Defined in `GHC.Real'  --
instance Num Int -- Defined in `GHC.Num'
instance Real Int -- Defined in `GHC.Real'
instance Bounded Int -- Defined in `GHC.Enum'
instance Enum Int -- Defined in `GHC.Enum'
instance Eq Int -- Defined in `GHC.Classes'
instance Ord Int -- Defined in `GHC.Classes'
instance Read Int -- Defined in `GHC.Read'
instance Show Int -- Defined in `GHC.Show'
ghci>

ghci> maxBound:: Int
9223372036854775807
ghci> maxBound:: Word
18446744073709551615
ghci> minBound:: Int
-9223372036854775808
ghci> minBound:: Word
0
ghci>


-- Question 3
-- Investigate the `Enum` type class. What behaviours provides?
ghci> :i Enum
type Enum :: * -> Constraint
class Enum a where
  succ :: a -> a
  pred :: a -> a
  toEnum :: Int -> a
  fromEnum :: a -> Int
  enumFrom :: a -> [a]
  enumFromThen :: a -> a -> [a]
  enumFromTo :: a -> a -> [a]
  enumFromThenTo :: a -> a -> a -> [a]

  

-- Question 4
-- Add type signatures to the functions below and use type variables and type classes.
-- Then uncomment the functions and try to compile.

f1::(Ord a, Fractional a, String p) => a -> a -> p ->p
f1 x y z = show (x / y) ++ z

f2 :: (Bounded a, Eq a) => a -> a
f2 x = if x == maxBound then minBound else succ x

-- Question 5
-- Investigate the numeric type classes to figure out which behaviors they provide to change between numeric types.
ghci> :i Num
type Num :: * -> Constraint
class Num a where
  (+) :: a -> a -> a
  (-) :: a -> a -> a
  (*) :: a -> a -> a
  negate :: a -> a
  abs :: a -> a
  signum :: a -> a
  fromInteger :: Integer -> a
  {-# MINIMAL (+), (*), abs, signum, fromInteger, (negate | (-)) #-}       
        -- Defined in `GHC.Num'
instance Num Double -- Defined in `GHC.Float'
instance Num Float -- Defined in `GHC.Float'
instance Num Int -- Defined in `GHC.Num'
instance Num Integer -- Defined in `GHC.Num'
instance Num Word -- Defined in `GHC.Num'