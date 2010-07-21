module StringCalculator (
  add
) where

  add :: String -> Integer
  add xs = sum (extractNumbers xs) where
    extractNumbers xs = map read (split ',' xs)
    split _ [] = []
    split c list = first : split c (dropWhile (== c) rest) where
      (first, rest) = break (== c) list
