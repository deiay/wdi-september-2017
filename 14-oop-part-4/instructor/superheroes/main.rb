require_relative 'superheroes'

superman  = Kryptonian.new('Clark Kent')
batman    = BatPerson.new('Bruce Wayne')
wolverine = XWeapon.new('Logan')

superman.fly
batman.hit(wolverine)
puts "wolverine's health is at #{ wolverine.health }"
superman.hit(wolverine)
puts "wolverine's health is at #{ wolverine.health }"
wolverine.rest
puts "wolverine's health is at #{ wolverine.health }"

batman.activate_shield
superman.hit(batman)
puts "batman's health is at #{ batman.health }"
superman.hit(batman)
puts "batman's health is at #{ batman.health }"

superman.land
puts "superman's altitude is #{ superman.altitude }"
batman.use_super_weapon(superman)
puts "superman's health is at #{ superman.health }"
