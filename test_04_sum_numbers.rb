# Ask user to input an array of numbers 5 times
sum_numbers_array = []
puts "Please enter a number"
  
5.times do 
  number = gets.chomp.to_i
  sum_numbers_array << number
end

puts sum_numbers_array

# Return sum of the array
def sum_numbers (numbers)
   numbers.sum
end

puts sum_numbers(sum_numbers_array)

# Use these numbers to check code:
# sum_numbers([1,1,1]) should return 3 -> Correct
# sum_numbers([5,2,100,0,10]) should return 117 -> Correct