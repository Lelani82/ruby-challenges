# Interesting number

# An interesting number is one with at least 3 digits,
# in which the digits are either incrementing or decrementing.

# Examples:
# interesting_number(789) => true
# interesting_number(321) => true
# interesting_number(798) => false
# interesting_number(6) => false
# interesting_number(23) => false

# When the digits are incrementing, 0 comes after 9:
# interesting_number(7890) => true
# When the digits are decrementing, 0 comes after 1:
# interesting_number(3210) => true

def interesting_number(number)
    num = number.digits
    # checking if min 3 digits
    if num.length < 3 
        return false
    end
    # if (num[1] == num[0] += 1 || num[0] -= 1) && (num[1] == num[2] += 1 || num[2] -= 1)
    #     return true
    # end
end

p interesting_number(789) # => true
p interesting_number(321) # => true
p interesting_number(798) # => false
p interesting_number(6) # => false
p interesting_number(23) # => false

# min 3 digits DONE
# 123 or 321
# 9 0 incrementing
# 1 0 decrementing