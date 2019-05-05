# Asks user for 2 numbers
num = []
2.times do
  puts "Please enter a number"
  num << gets.strip.to_i
end

# Prints out largest of the 2 numbers
puts num.max




# Check your solution by filling in the folowing table:
# number_1 || number_2 || expected || actual
#    20    ||   90     ||    90    ||   90

# Beast Mode:
# Examples - what if both numbers are equal or are strings?

def largest_number(num1, num2)
  case
  when num1 > num2
    puts num1
  when num1 < num2
    puts num2
  else
    puts num1
  end

end

 largest_number(num[0], num[1])