distance = 0
go_home = false
energy = 5
while go_home == false
  puts "Would you like to walk or run?"
  pace = gets.chomp
  if pace == "walk"
    distance += 1
    energy +=3
  elsif pace == "run"
    if energy >= 4
      distance += 5
      energy -= 4
    else
      puts "You don't have enough energy for that"
    end
  elsif pace == "eat"
    energy += 10
  elsif pace == "go home"
    go_home = true
    puts "You've completed your workout"
  else
    puts "please choose \"walk\" or \"run\""
  end
  puts "You are #{distance}km from home.\n Your energy level is #{energy}"
end
