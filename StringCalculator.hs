import Test.QuickCheck

prop_empty_sum_is_zero = add "" == 0

prop_sum_of_one_number_is_itself a = add (show a) == a

prop_sum_two_numbers a b = add (show a ++ "," ++ show b) == a + b

add :: String -> Integer
add "" = 0
add xs | any (== ',') xs = read a + read b
       | otherwise  = read xs
  where
    (a, b) = (a', tail b')
    (a', b') = break (== ',') xs
