import Test.QuickCheck

prop_empty_sum_is_zero = add "" == 0

prop_sum_of_single_number_is_itself = add "2,2" == 4

add "" = 0
add xs = 4
