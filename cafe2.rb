# This challenge has three parts. Use all you have learned to
# implement the solution. Use methods to keep your code DRY and
# clean. Use data structures that are appropriate.
# Make notes for anything you are unsure about.

# Menu as empty arrays:
lattes = []
scones = []
teas = []

# Part 1
# You are working at a cafe where you have a current backlog of orders:
# 6 lattes
# 2 scones
# and
# 3 teas

# Backlog of orders:
lattes << 6
scones << 2
teas << 3

# Write a program that asks the customer for their order. The customer
# will only order one item.
#   if they order a latte, add one to the number of lattes you need to make,
#   if they order a scone, add one to the number of scones you need to serve,
#   if they order a tea, add one to the number of teas you need to make
# Print the final order so you know what to make.

# Ask customer for their order:


puts "What would you like to order (latte, scone, tea)? Type (q)uit to quit."
ordered_item = gets.chomp

puts "How many would you like to order?"
ordered_quantity = gets.chomp.to_i

if (ordered_item == "latte")
    lattes << ordered_quantity
elsif (ordered_item == "scone")
    scones << ordered_quantity
elsif (ordered_item == "tea")
    teas << ordered_quantity
elsif (ordered_item == "q") 
    puts "Thank you for your patronage. Have a great day!"
else puts "Unfortunately we do not have that on the menu today"
end

# Add customer order to final order:
total_lattes = lattes.inject(:+)
total_scones = scones.inject(:+)
total_teas = teas.inject(:+)

# Final order to make:
puts "There are a total of #{total_lattes} lattes to be made"
puts "There are a total of #{total_scones} scones to be served"
puts "There are a total of #{total_teas} teas to be made"

# Part 2
# Lattes sell for $4, and cost $2 to make
# Scones sell for $5, and cost $3 to make
# Tea sells for $3, and cost $0.50 to make

# Print out the total profit for the orders you have.

# Calculate profits:
lattes_profit = total_lattes * (4-2)
scones_profit = total_scones * (5-3)
teas_profit = total_teas * (3-0.50)

puts "Total profits for the orders are: Lattes $#{lattes_profit}; Scones $#{scones_profit}; Teas $#{teas_profit}"

# Part 3
# Write a program that asks the user for their order.
# Allow the user to input mutiple items and to specify quantities.
# When the order is complete:
#   Print the order
#   Print the total price

# Example:
# What would you like to order (latte, scone, tea)? Type (q)uit to quit.
# latte
# How many?
# 2
# Anything else? Type (q)uit to quit.
# tea
# How many?
# 1
# Anything else? Type (q)uit to quit.
# coffee
# I'm sorry, we don't serve that. Would you like latte, scone, or tea? Type (q)uit to quit.
# q
# Thank you! Your order:
# 2 latte
# 1 tea
# Order total: $11.00

=begin
puts "What would you like to order (latte, scone, tea)? Type (q)uit to quit."
ordered_item = gets.chomp

orders.each do |key, value|
    if ordered_item == key.to_s
        value += 1
        puts "You have ordered #{value} #{key}s"
    end
end
=end