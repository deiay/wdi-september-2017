puts "How old are you"
my_number = gets.to_i

if my_number > 105
  puts "I'm not sure I believe you"
else
  puts "We are #{my_number - 23} years apart"
end
