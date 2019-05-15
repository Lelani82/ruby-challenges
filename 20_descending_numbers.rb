# Background
# Using array and string methods
# Passing in one argument

## Specs

#Your task is to make a function that can take any 
#non-negative integer as a argument and return it 
#with its digits in descending order. 
#Essentially, rearrange the digits to create 
#the highest possible number.

#Examples:
#Input: 21445 Output: 54421
#Input: 145263 Output: 654321
#Input: 1254859723 Output: 9875543221

def descending_order(n)
    array = n.digits
    array.sort!
    array.reverse!
    return array.join.to_i          # To make Janel happy :)
end

# Test your code here
puts descending_order(21445)

# Add some interesting test cases that test edge cases