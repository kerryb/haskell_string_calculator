import Test.QuickCheck

prop_empty_sum_is_zero = add "" == 0

prop_sum_two_numbers a b = add (show a ++ "," ++ show b) == a + b

add "" = 0
add xs = read a + read b
  where
    (a, b) = (a', tail b')
    (a', b') = break (== ',') xs
