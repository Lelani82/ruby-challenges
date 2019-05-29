# Isogram
# Difficulty: medium

# An isogram is a word that has no repeatting letters; 
# consecutive or non-consecutive.

# Implement a method that determines whether a string 
# that contains only letters is an isogram. 
# The function will take the string as input, and will 
# return either true or false.


# *E.g.* isogram?("hello") should return false

# *E.g.* isogram?("scary") should return true

def isogram?(input)
    input_hash = Hash.new(0)
    input.split.each do |letter|
        input_hash[letter] +=1
    end

    if input_hash.value >= 2
        return false
    else
        return true
    end
end

# def count_words(words)
#     word_hash = Hash.new(0)
#     words.downcase.split.each do |word|
#         word_hash[word] += 1
#     end
#     return word_hash


# end

# Test your code here
puts isogram?("hello") #should return false
puts isogram?("scary") #should return true
