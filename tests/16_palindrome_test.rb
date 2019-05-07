# Add tests to me :D
require 'test/unit'
require_relative '../16_palindrome'

class PalindromeTest < Test::Unit::TestCase
  def test_palindrome
    assert_equal(true, palindrome("mom"))
    assert_equal(true, palindrome("racecar"))
    assert_equal(false, palindrome("lelani"))
  end
end