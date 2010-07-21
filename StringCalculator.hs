import Test.QuickCheck
import Data.List

prop_sum_n_numbers numbers = add input == sum numbers where
  input = (intercalate "," (map show numbers))

add :: String -> Integer
add xs = sum (extractNumbers xs) where
  extractNumbers xs = map read (split ',' xs)
  split _ [] = []
  split c list = first : split c (dropWhile (== c) rest) where
    (first, rest) = break (== c) list
