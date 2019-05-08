documentary = "Planet Earth"
drama = "Good Will Hunting"
comedy = "The Longest Yard"
book = "Bible"

puts "Rate your love for Documentaries (1-5)"
documentary_rating = gets.chomp.to_i

puts "Rate your love for dramas (1-5)"
drama_rating = gets.chomp.to_i

puts "Rate your love for comedies (1-5)"
comedy_rating = gets.chomp.to_i

puts "Your recomendations are"
if documentary_rating >= 4
  puts documentary
elsif ((drama_rating >= 4) && (comedy_rating >= 4)) || (drama_rating >= 4)
  puts drama
elsif comedy_rating >= 4
  puts comedy
elsif (comedy_rating > drama_rating) && (comedy_rating > documentary_rating)
  puts comedy
elsif (drama_rating > comedy_rating) && (drama_rating > documentary_rating)
  puts drama
elsif (documentary_rating > comedy_rating) && (documentary_rating > drama_rating)
  puts documentary
else
  puts book
end
