require_relative('pizza')

class Pizzeria
  @@store_name = "Super Pizza"
  @@all_pizzas_ordered = []

  def initialize(owner_name)
    @is_open = false
    @stock = 0
    @owner_name = owner_name
    @pizzas_ordered = []
  end

  def open
    @is_open = true
  end

  def close
    @is_open = false
  end

  def restock
    if not @is_open
      @stock += 5
    else
      puts "you must close the pizzeria first"
    end
  end

  def order
    # only order if there is stock
    # get a number of pizzas to be ordered
    # get toppings and size
    # create a pizza
    # decrease stock by 1
    puts "Welcome to #{@owner_name}'s #{@@store_name}"
    puts "What size of pizza would you like?"
    size = gets.chomp
    new_pizza = Pizza.new(size,['cheese','pepperoni'])
    @pizzas_ordered << new_pizza
    @@all_pizzas_ordered << new_pizza
    @stock -= 1
    new_pizza.bake
    new_pizza.cut
    return new_pizza
  end

  def get_pizzas_ordered
    @pizzas_ordered
  end

  def self.all_pizzas_ordered
    @@all_pizzas_ordered
  end
end


pizzeria = Pizzeria.new('Sandy')
pizzeria2 = Pizzeria.new('Judy')
pizzeria.close
2.times do
  pizzeria.restock
end
pizzeria.open
my_pizza = pizzeria.order
puts my_pizza.inspect

my_pizza2 = pizzeria2.order
puts my_pizza2.inspect

puts Pizzeria.all_pizzas_ordered.inspect
