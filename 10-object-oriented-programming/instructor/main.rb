require './person.rb'

fred = Person.new('Fred', 'Ngo')
mina = Person.new('Mina', 'Mikhail')
natalie = Person.new('Natalie', 'Black')

# puts mina.full_name
# mina.first_name = 'Joe'
# puts mina.full_name
#
# puts fred.full_name
# fred.first_name = 'Dave'
# puts fred.full_name

puts fred.greetings
fred.sleep
puts fred.greetings
fred.wake
puts fred.greetings

fred.mutate
