# Ask user to input their name
puts "What is your name?"
name = gets.chomp.capitalize!

# Program outputs greeting and asks for their age
puts "Hi #{name}! How old are you?"
age = gets.to_i

# Program outputs message
puts "Wow! You are #{age} years old. Congratulations!"

# Beast mode challenge:
# Tells how many years until user is 100 years old
age_until_100 = 100 - age
puts "Tom, in #{age_until_100} years you will be 100 years old!"
