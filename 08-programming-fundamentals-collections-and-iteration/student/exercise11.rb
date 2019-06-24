puts "How many pizzas do you want to order?"

quantity = (1..gets.to_i)

quantity.each do |num|
  puts "How many toppings do you want for pizza #{num}?"
  toppings = gets.chomp
  puts "You've ordered a pizza with #{toppings} toppings"
end
