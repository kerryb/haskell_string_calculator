import Test.QuickCheck
import Test.QuickCheck.Batch
import Data.List
import StringCalculator

options = TestOptions {
  no_of_tests         = 200,
  length_of_tests     = 1,
  debug_tests         = False
}

main = do
  runTests "All" options [
      run prop_sum_n_numbers
    ]

prop_sum_n_numbers numbers = add input == sum numbers where
  input = (intercalate "," (map show numbers))
