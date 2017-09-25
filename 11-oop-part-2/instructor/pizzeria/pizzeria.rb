
require_relative('pizza')

class Pizzeria
  @@store_name = "Super Pizza"
  @@all_pizzas_ordered = []

  def initialize(owner_name)
    @is_open = false
    @stock = 0
    @owner = owner_name
    @pizzas_ordered = []
  end

  def order
    # only order if there is stock
    # get a number of pizzas to be ordered
    # ask for toppings, etc.
    puts "Welcome to #{@owner}'s #{@@store_name}!"
    puts "What size of pizza would you like?"
    size = gets.chomp
    new_pizza = Pizza.new(size)
    @pizzas_ordered << new_pizza
    @@all_pizzas_ordered << new_pizza
    new_pizza.bake
    new_pizza.cut
    @stock -= 1
    return new_pizza
  end

  def get_pizzas_ordered
    return @pizzas_ordered
  end

  def self.get_all_pizzas_ordered
    return @@all_pizzas_ordered
  end

  def open
    @is_open = true
  end

  def close
    @is_open = false
  end

  def restock
    if @is_open == false
      @stock += 5
    else
      puts "Must close the pizzeria first!"
    end
  end
end


pizzeria = Pizzeria.new("Judy")
pizzeria2 = Pizzeria.new('Sandy')

pizzeria.restock
pizzeria.open
pizzeria.close

pizzeria.restock

pizzeria2.restock
pizzeria2.restock
pizzeria2.restock

# my_pizza = pizzeria.order
# cool_pizza = pizzeria2.order

pizzeria.order
pizzeria2.order
pizzeria.order
pizzeria2.order
pizzeria2.order

puts pizzeria.get_pizzas_ordered.inspect
puts '---'
puts pizzeria2.get_pizzas_ordered.inspect

puts '---'
puts Pizzeria.get_all_pizzas_ordered.inspect
