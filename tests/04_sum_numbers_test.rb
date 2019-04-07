require 'test/unit'
require_relative '../04_sum_numbers'

class LargestNumberTest < Test::Unit::TestCase
  def test_sum_numbers
    assert_equal(3, sum_numbers([1,1,1]))
    assert_equal(117, sum_numbers([5,2,100,0,10]))
    assert_equal(290, sum_numbers([55,23,183,0,29]))
  end
end

sum_numbers([])

  # OPTIONAL:
  # Go to the tests folder and open 04_sum_numbers_test.rb.
  # Read over the tests and see if you can understand them.
  
  # Try add at least three more tests, and test at least 2 corner cases.
  
  # Hint:
  # You could test what happens when you call sum_numbers([])?
  
