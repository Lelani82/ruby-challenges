# Asks user for 2 numbers

numbers = []

2.times do
puts "Enter a number:"
num = gets.chomp.to_i
numbers << num
end

# Prints out largest of the 2 numbers
puts numbers.max

# Check your solution by filling in the folowing table:
# number_1 || number_2 || expected || actual
#    20    ||   90     ||    90    ||   90

# Beast Mode:
# Examples - what if both numbers are equal or are strings?

def largest_number (number_1, number_2)
  if number_1 == number_2
    puts number_1
  elsif number_1 > number_2
    puts number_1
  else
    puts number_2
  end
end

largest_number(100, 50)