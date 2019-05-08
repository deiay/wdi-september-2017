events = ['swimming','festival','vaction','cottage','ski','hike','hop']

# 5.times do [current_time]
#   puts "God is good"
# end

puts "This summer, I did the following:"
events.each do |event|
  if event.length > 5
    puts "#{event} sounds complicated"
  else
    puts "#{event} sounds simple"
  end
end
