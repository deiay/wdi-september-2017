puts "What's your name?"

user_name = gets.chomp

puts "Hi #{user_name}! How old are you?"
user_age = gets.chomp.to_i
birth_year = "#{2019 - user_age} or #{2019 - user_age - 1}"

puts "#{user_age}! That means you must have been born in #{birth_year}"
