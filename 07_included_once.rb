# Included Once
#
# Write a method that takes an array and a string. Return
# true if the string is found in the array only once.
# Otherwise return false.
#
# What's the time complexity of your solution? Can it be improved?
#
# *** Whiteboard this first ***
#
# Difficulty: 4/10
#
# Example:
# includedOnce(['hello','hi','hi'], 'hi') -> false
# includedOnce(['hello','hi','hey'], 'hi') -> true
#
# Check your solution by running the tests:
# ruby tests/14_included_once_test.rb
#

def included_once (haystack, needle)
  i = 0
  haystack.each do |word|
    if needle == word
      i += 1
    else 
      i += 0
    end
  end

  if i == 1
    return true
  else
    return false
  end
  
end
#p included_once(['hello','hi','hi'], 'hi') #-> false
#p included_once(['hello','hi','hey'], 'hi') #-> true