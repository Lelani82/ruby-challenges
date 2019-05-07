# Count Letters

# Write a method that will take a string, keep count
# of each letter and return the totals as a hash.

# Example:
# count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, "o"=>1}
# count_letters("mississippi") should return {"m"=>1, "i"=>4, "s"=>4, "p"=>2}

# Check your solution by running the tests:
# ruby tests/08_count_letters_test.rb

# create empty hash where key is letter and value is number
words_hash = Hash.new(0)
def count_letters (string)
  #split string into letters
  string_array = string.split("")
  p string_array                  # testing
  words_hash = Hash[string_array.map {x| [x, 1]}]
  p words_hash
  
end


count_letters("hello")
