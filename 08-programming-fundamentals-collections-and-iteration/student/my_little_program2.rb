events = ['swimming','festival','vaction','cottage','ski','hike','hop']
events_capitalized = []
# 5.times do [current_time]
#   puts "God is good"
# end

puts "This summer, I did the following:"

# events.each do |event|
#   events_capitalized << event.upcase
# end
#
# p events_capitalized

events.each { |event| puts "- #{event}"}
