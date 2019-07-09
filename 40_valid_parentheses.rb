# Valid parentheses

# Write a method that returns true if the argument string contains valid parentheses
# Examples that evaluate to true: 
# valid_parentheses?("()") => true
# valid_parentheses?("abc") => true
# valid_parentheses?("(a(bc))") => true
#
# Examples that evaluate to false:
# valid_parentheses?("(") => false
# valid_parentheses?("abc)") => false
# valid_parentheses?("(a(bc)") => false

def valid_parentheses?(string)
    #split string into array to compare items
    chars = string.split("")

    # variables to count number of parenthesis
    x = 0   # "("
    y = 0   # ")"
    z = 0   # no parenthesis

    chars.each do |item|
        if item == "(" 
            x += 1
        elsif item == ")"
            y += 1
        else
            z += 1
        end
    end

    # checking if x == y
    if (x == y)
        return true
    else 
        return false
    end    
end

# Examples that evaluate to true: 
p valid_parentheses?("()")
p valid_parentheses?("abc") 
p valid_parentheses?("(a(bc))") 

# Examples that evaluate to false:
p valid_parentheses?("(") 
p valid_parentheses?("abc)") 
p valid_parentheses?("(a(bc)") 