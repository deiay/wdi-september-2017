class Car

  @@default_colour = 'green'

  def initialize(owner)
    @colour = @@default_colour
    @owner  = owner

    @broken = false
  end

  def self.default_colour
    @@default_colour
  end

  def self.default_colour=(default_colour)
    @@default_colour = default_colour
  end

  def colour
    @colour
  end

  def broken
    @broken
  end

  def colour=(colour)
    @colour = colour
  end

  def crash(another_car = nil)
    @broken = true
    another_car.crash if another_car
  end

end
