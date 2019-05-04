# You have to stop the infamous hackerman by writing a basic security program.

# Your task is to write a program which will ask the user for input twice.
# Both times should ask the user to type words and will display the FIRST input.

# However if any of the words in the second input match with a word from the
# first input it should say "HIDDEN" instead of the matched word.

# Example:
# first_input = bob rob dob mob
# second_input = kob fob dob

# output = bob rob HIDDEN mob

# Check your solution by running:
# ruby 14_hackerman.rb

# Your code here
# asks user for 1st input
puts "Please enter something"
first_input = gets.strip.downcase
# asks user for 2nd input
puts "Please enter something again"
second_input = gets.strip.downcase

def duplicates (first_input, second_input)
    # splits & stores inputs into array's of words
    first_input_words = first_input.split(" ")
    second_input_words = second_input.split(" ")
    # looks for duplicates in both arrays
    duplicates = first_input_words & second_input_words
    duplicate_word = duplicates.join                        
    # itterate through first_input_words and look for same words as in duplicates & replace with 'hidden'
    first_input_words = first_input_words.map do |word|
        if word == "#{duplicate_word}"
            'HIDDEN'
        else 
            word
        end
    end
    p first_input_words.join(" ")
end

duplicates(first_input, second_input)

# Beast mode:
# Does your code deal with capital letters? Update your solution so that
# they will be downsized if they are input but HIDDEN remains capitalised.