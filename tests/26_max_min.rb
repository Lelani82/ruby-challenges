require 'test/unit'
require_relative '../26_max_min'

class MaxMinTest < Test::Unit::TestCase
  def test_max_min
    assert_equal(("23 1"), max_min("5 2 9 8 23 1"))
    assert_equal(("38 -9"), max_min("15 4 4 38 -9")) 
  end
end