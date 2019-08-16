require_relative 'superhero'
#require 'pry'

superman = Kryptonion.new('Clark Kent')
supergirl = Kryptonion.new('Kara Danvers')
flash = Superhero.new('Barry Allen')
batman = BatPerson.new('Bruce Wayne')

#binding.pry
#
# 9.times {superman.hit(flash)}
# 3.times {flash.rest}
# 2.times {superman.hit(flash)}
# puts "Is the Flash conscious? #{flash.conscious?}"
#
# flash.take_hit(10)
