# A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits in a given base. We will restrict ourselves to decimal (base 10).

# For example, take 153 (3 digits):

#     1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
# and 1634 (4 digits):

#     1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634
# The Challenge:

# Your code must return true or false depending upon whether the given number is a Narcissistic number in base 10.

# Error checking for text strings or other invalid inputs is not required, only valid integers will be passed into the function.

# To run the test, just run rspec spec/42_narcissistic_number_spec.rb

def narcissistic_number?(number)
    # convert string into array 
    number_array = "#{number}".chars
    # find number of digits in array
    digits = number_array.length
    # calc each number in array to the power of digits
    total = []
    number_array.each do |item|
        total << item.to_i ** digits
    end

    # check if total.sum == number => true
    if total.sum == number
        return true
    # check if total.sum != number => false
    else 
        return false
    end
end

p narcissistic_number?(153)   # true
p narcissistic_number?(12)    # false