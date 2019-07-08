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
    chars = string.split("")

    chars.each do |letter|
        if letter != ("(" or ")")
            return true
        end
    end

    
    # if (string.include?("(") and string.include?(")"))
    #     return true 
    # else 
    #     return false 
    # end
    
end

# Examples that evaluate to true: 
p valid_parentheses?("()")
p valid_parentheses?("abc") 
p valid_parentheses?("(a(bc))") 
#
# Examples that evaluate to false:
p valid_parentheses?("(") 
p valid_parentheses?("abc)") 
p valid_parentheses?("(a(bc)") 