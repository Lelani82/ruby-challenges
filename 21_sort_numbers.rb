# Sorting algorithms are a key tool in programming.
#
# Write an algorithm that will sort an array of numbers 
# in ascending order. 
# Do not use the .sort method - the idea is that you write
# your own sort method.
# 
# Use hand simulation or pythontutor.com to determine how
# many times your solution visits each element of the array
# in a worse case scenario. If your array has 10 elements for example,
# in a worse case situation does your algorithm examine each element
# once? Twice? More? Less?
# 
# This will help you begin to understand order of complexity
# of algorithms.
#
# Optional:
# Look up explanations of common sorting algoithms
# like bubble sort and quick sort. Don't look up code, just look up the 
# explanations and see if you can implement one of those. 
# Which one is your favourite and why?
#
# Example input: [2,5,4,8,2]
# Expected output: [2,2,4,5,8]

def sort(num_array)
    # Initialize empry array for sorted numbers
    numbers = num_array[0]
    # iterate through array to compare numbers
    num_array.each do |num|
        if num > numbers[0]
            numbers.push(num)
        elsif num < numbers[0]
            numbers.unshift(num)
        else
            puts "error"
        end
    end
end

num_array = [2,5,4,8,2]
p sort(num_array)