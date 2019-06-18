require './person.rb'

fred = Person.new('Fred','Ngo')
mina = Person.new('Mina','Mikhail')
natalie = Person.new('Natalie','Black')

puts mina.full_name

mina.change_first_name("Tina")

fred.first_name= 'Joe'

puts fred.greetings

fred.sleep

puts fred.greetings
