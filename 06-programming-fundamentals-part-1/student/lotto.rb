my_secret_number = 4

puts "Guess my number"

guess = gets.to_i

if guess == my_secret_number
  puts "You win!"
elsif (guess - my_secret_number).abs <= 1
  puts "So close"
else
  puts "Try again"
end
