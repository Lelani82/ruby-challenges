# Write a program which will ask users for a string input.
# The program should display the input unless, it contains the letter 's'.

# If 's' is included change the output so that it will be 'th' instead.

# Examples:
# input = say hi
# output = thay hi

# input = mississippi
# output = miththiththippi

# Hint:
# Look up String on Ruby docs to help.

# Check your solution by running:
# ruby 15_change_letters.rb

# Your code here
# get user input
puts "Please enter a sentence"
sentence = gets.strip.downcase

def s_to_th (sentence)
    # split words into letters
    letters_split = sentence.split("")
    # iterate through letters and replace s with th
    letters_split = letters_split.map do |letter|
        if letter == 's'
            'th'
        else
            letter
        end
    end
    puts letters_split.join
end

s_to_th(sentence)