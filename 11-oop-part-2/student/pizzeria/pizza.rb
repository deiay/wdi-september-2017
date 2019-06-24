class Pizza
  def initialize(pizza_size = 'regular',toppings = [])
    @toppings = toppings
    @baked = false
    @slices = 0
    @pizza_size = pizza_size
  end

  def bake
    @baked = true
  end

  def cut
    ## add two slices to the Pizza
    ## only slice if the pizza is baked
    if @baked
      @slices += 2
    else
      puts "You have to bake it first"
    end
  end

  def eat
    #check if baked
    #check if there is atleat one slices
    #subtract one from slices total
    if @baked && @slices >= 1
      @slices -=1
    else
      puts "There are no slices to eat"
    end
  end
end


# pizza = Pizza.new('large')
# pizza2 = Pizza.new('medium')
# puts pizza.inspect
#
# pizza.cut
# pizza.eat
#
# pizza.bake
# puts pizza.inspect
#
# pizza.cut
# puts pizza.inspect
#
# pizza.eat
# puts pizza.inspect
