
class Pizza
  def initialize(pizza_size)
    @baked = false
    @slices = 0
    @size = pizza_size
  end

  def bake
    @baked = true
  end

  def cut
    new_slices = 2
    if @baked && @slices < 8
      @slices += new_slices
    else
      puts "You have to bake it first!"
    end
  end

  def eat
    # check if baked
    # check if >= 1 slice
    if @baked && @slices >= 1
      @slices -= 1
    end
  end
end

# pizza = Pizza.new('large')
# puts pizza.inspect
# pizza2 = Pizza.new('medium')
# puts pizza2.inspect
#
# pizza.bake
# puts pizza.inspect
#
# pizza.eat
# puts pizza.inspect
#
# 4.times do
#   pizza.cut
# end
# puts pizza.inspect
#
# 11.times do
#   puts pizza.inspect
#   pizza.eat
# end
#
# puts '---'
#
# puts pizza2.inspect
# pizza2.bake
# pizza2.cut
# pizza2.cut
# pizza2.eat
# puts pizza2.inspect
