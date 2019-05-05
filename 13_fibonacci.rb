# nthFibonacci

# A Fibonacci sequence is a list of numbers that begins with 0 and 1, and each
# subsequent number is the sum of the previous two.

# For example, the first seven Fibonacci numbers are: 0 1 1 2 3 5 8

# Write a method that will return the nth number of the sequence.

# The syntax is easy, getting your head around the algorithm is the challenge.
# Write the sequence on a piece of paper first and think about the steps
# you take for each number. Translate this to pseudocode and then to ruby.

# Difficulty:
# 6/10

# Example:
# nthFibonacci(0) -> 0
# nthFibonacci(3) -> 2
# nthFibonacci(6) -> 8

# Check your solution by running the tests:
# ruby tests/13_fibonacci_test.rb

def nthFibonacci (a)
  # create an array
  a, b, fibonacci = 0,1,[]

  # fibonacci algorithm - 
  for item in fibonacci do
    a, b = b, a + b
  end
   
  
  # p fibonacci           # testing
  
  # b +=1
  # p c = a + b
  #d = b + c  
  

  # create hash where key is letter and value is index
  #find_index = Hash.new(0)

end

p nthFibonacci(1) 
# test: assert_equal(0, nthFibonacci(0)) # 1st num & index number
# 0 1 1 2 3 5 8
# a = 0
# b = 1

# a + b = c
# 0 + 1 = 1
# b + c = d 
# 1 + 1 = 2 
# c + d = e 
# 1 + 2 = 3
# d + e = f 
# 2 + 3 = 5
# e + f = g 
# 3 + 5 = 8