documentary = "Planet Earth"
drama = "Good Will Hunting"
comedy = "The Longest Yard"
book = "Bible"

puts "Do you like Documentaries (y/n)"
if gets.chomp == "y"
  documentary_reco = true
else
  documentary_reco = false
end

puts "Do you like dramas (y/n)"
if gets.chomp == "y"
  drama_reco = true
else
  drama_reco = false
end

puts "Do you like comedies? (y/n)"
if gets.chomp == 'y'
  comedy_reco = true
else
  comedy_reco = false
end

puts "Your recomendations are"
if documentary_reco == true
  puts documentary
elsif ((drama_reco == true) && (comedy_reco == true)) || (drama_reco == true)
  puts drama
elsif comedy_reco == true
  puts comedy
else
  puts book
end
