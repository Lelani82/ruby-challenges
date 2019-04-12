# This challenge has three parts. Use all you have learned to
# implement the solution. Use methods to keep your code DRY and
# clean. Use data structures that are appropriate.
# Make notes for anything you are unsure about.

# Part 1
# You are working at a cafe where you have a current backlog of orders:
# 6 lattes
# 2 scones
# and
# 3 teas

orders = { "latte": 6, "scone": 2, "tea": 3, }
total_orders = {"latte": 0, "scone": 0, "tea": 0, }
# Write a program that asks the customer for their order. The customer
# will only order one item.
#   if they order a latte, add one to the number of lattes you need to make,
#   if they order a scone, add one to the number of scones you need to serve,
#   if they order a tea, add one to the number of teas you need to make
# Print the final order so you know what to make.

puts "What would you like to order (latte, scone, tea)? Type (q)uit to quit."
ordered_item = gets.chomp

puts "How many would you like to order? Type (q)uit to quit."
ordered_quantity = gets.chomp.to_i

orders.each do |key, value|
    if ordered_item == key.to_s
        puts "You have ordered #{ordered_quantity} #{key}s"
    end
    if ordered_item == key.to_s
        total_orders = ordered_quantity += value #This calculates TOTAL orders
        puts total_orders
    end
end


=begin
#Updating total orders for the day BUT UPDATES ALL ITEMS
orders.each do |key, value|
    if ordered_item == key.to_s
        orders.transform_values! { |v| v += ordered_quantity}
        puts "You have ordered #{value} #{key}s"
    end
end
=end


#daily_orders = {"latte": 0, "scone": 0, "tea": 0,}
#daily_orders.merge!(orders)
#puts daily_orders
#orders.merge!(orders) do|key, old_value, new_value|
 #   puts orders
#end

#puts orders.update
 

if ordered_item == "q"
    puts "Thank you for your patronage. Have a great day!"
end

# 2
sales_price = { "latte": 4, "scone": 5, "tea": 3,}
cost_price = { "latte": 2, "scone": 3, "tea": 0.50,}

latte_profit = "Total profits for lattes today is: %{latte}" % orders 
scone_profit = "Total profits for scones today is: %{scone}" % orders
tea_profit = "Total profits for teas today is: %{tea}" % orders
#orders[:latte]*(4-2))
# , "scone": 0, "tea": 0,}

puts latte_profit
puts scone_profit
puts tea_profit

=begin WORKS, EXCEPT ADDS COST TO ALL
item_profit.each do |key, value|
    if ordered_item == "latte"
        value += 2.to_f
    elsif ordered_item == "scone"
        value += 2.to_f
    else ordered_item == "tea"
        value += 2.50
    end
    puts "Total #{key} profits for today is $#{value}"
end
=end
=begin USE tHIS TO CALC DIFF BTWN COST & SALES
def total_profit(item, quantity)
    #item_profit.each do |key, value|
     #   if ordered_item == key.to_s
      #      value += 1
       #     puts "Profit for #{key} is $#{value}"
        #end
        puts "#{item}, #{quantity}"
end 

total_profit("latte", 6)

#end
=end    


# Part 2
# Lattes sell for $4, and cost $2 to make
# Scones sell for $5, and cost $3 to make
# Tea sells for $3, and cost $0.50 to make

# Print out the total profit for the orders you have.

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

