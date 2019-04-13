# This challenge has three parts. Use all you have learned to
# implement the solution. Use methods to keep your code DRY and
# clean. Use data structures that are appropriate.
# Make notes for anything you are unsure about.

# Total orders as empty arrays:
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

# Customers order:
customers_lattes = [0]
customers_scones = [0]
customers_teas = [0]

# Write a program that asks the customer for their order. The customer
# will only order one item.
#   if they order a latte, add one to the number of lattes you need to make,
#   if they order a scone, add one to the number of scones you need to serve,
#   if they order a tea, add one to the number of teas you need to make
# Print the final order so you know what to make.

# Ask customer for their order:
loop do 
    puts "What would you like to order (latte, scone, tea)? Type (q)uit to quit."
    ordered_item = gets.chomp
    if ordered_item == "q"
        break
    end
    if (ordered_item == "latte")
        puts "How many?"
        ordered_quantity = gets.chomp.to_i
        customers_lattes << ordered_quantity
        lattes << ordered_quantity
        puts "Anything else? Type (q) to quit."
    elsif (ordered_item == "scone")
        puts "How many?"
        ordered_quantity = gets.chomp.to_i
        customers_scones << ordered_quantity
        scones << ordered_quantity
        puts "Anything else? Type (q) to quit."
    elsif (ordered_item == "tea")
        puts "How many?"
        ordered_quantity = gets.chomp.to_i
        customers_teas << ordered_quantity
        teas << ordered_quantity
        puts "Anything else? Type (q) to quit."
    else
        puts "Unfortunately we do not have that on the menu today."
    end
end

# Customer's receipt
customers_latte_total = customers_lattes.inject(:+)
customers_scone_total = customers_scones.inject(:+)
customers_tea_total = customers_teas.inject(:+)
puts "Thank you! Your order is:"
puts "#{customers_latte_total} Lattes" 
puts "#{customers_scone_total} Scones" 
puts "#{customers_tea_total} Teas"
# Customers total:
customers_total = (customers_latte_total * 4.00) + (customers_scone_total * 5.00) + (customers_tea_total * 3.00)
puts "Order Total: $#{format("%.2f", customers_total)}"

# Add total orders to final order:
total_lattes = lattes.inject(:+)
total_scones = scones.inject(:+)
total_teas = teas.inject(:+)

# Final order to make:
puts "The final order to be made is: #{total_lattes} x Lattes, #{total_scones} x Scones, and #{total_teas} x Teas."

# Part 2
# Lattes sell for $4, and cost $2 to make
# Scones sell for $5, and cost $3 to make
# Tea sells for $3, and cost $0.50 to make
# Print out the total profit for the orders you have.

# Calculate item profits:
lattes_profit = total_lattes * (4-2)
scones_profit = total_scones * (5-3)
teas_profit = total_teas * (3-0.50)

puts "Total profits for the orders are: Lattes $#{format("%.2f", lattes_profit)}; Scones $#{format("%.2f", scones_profit)}; Teas $#{format("%.2f", teas_profit)}."

# Calculate total days profits:
total_days_profits = lattes_profit + scones_profit + teas_profit
puts "Total profits for today is $#{format("%.2f", total_days_profits)}"

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