# Remove adjacent duplicates

# Sometimes we have input with adjacent duplicates, and we want to remove
# those adjacent duplicates, keeping the original input in order.

# Create a method, which takes a string argument and returns a string
# with duplicate adjacent elements removed, preserving the original
# order of characters and preserving original case. Your algorithm
# should be case sensitive, meaning that "Aa" should not be considered
# duplicate adjacent characters, like "aa" or "AA".  

# *E.g.* remove_adjacent_duplicates("AAaAbbCCCcDDcDA") should return "AaAbCcDcDA"

# *E.g.* remove_adjacent_duplicates("abcABCabcABC") should return exactly the same string: "abcABCabcABC"

def remove_adjacent_duplicates(input)
    # create empty strings
    result = ""
    last = ""
    # checks each letter in string
    input.chars.each do |letter|
        # if letter does not match letter in string, update last string
        if letter != last
            # add letter to result string
            result += letter
            # updates last letter checked in last string
            last = letter
        end
    end
    return result
end

p remove_adjacent_duplicates("AAaAbbCCCcDDcDA")
p remove_adjacent_duplicates("abcABCabcABC")