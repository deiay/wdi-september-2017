class Car

  @@default_colour = 'green'

  def initialize(owner)
    @colour = @@default_colour
    @owner  = owner
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

  def colour=(colour)
    @colour = colour
  end

end
