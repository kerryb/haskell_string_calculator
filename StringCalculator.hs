import Test.QuickCheck

prop_empty_sum_is_zero = add "" == 0

add _ = 0
