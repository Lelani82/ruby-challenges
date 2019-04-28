# Vowels

# Write a method that will take a string and
# return an array of vowels used in that string.

# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]

# Check your solution by running the tests:
# ruby tests/09_vowels_test.rb

def count_vowels (string)
  array = []
  letters = string.split("")
  array << letters
  array.each do | letters |
    vowels = []
    if letters == "a"
      vowels << letters
    elsif letters == "e"
      vowels << letters
    elsif letters == "i"
      vowels << letters
    elsif letters == "o"
      vowels << letters
      elsif letters == "u"
      else
      puts "no"
    end
  #puts array.include?("a")
  end
end

count_vowels("The quick brown fox")
puts vowels