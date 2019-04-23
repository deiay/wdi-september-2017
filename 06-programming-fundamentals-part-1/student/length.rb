puts "What's your name?"
name = gets.chomp

if name.length > 10
  puts "hi, #{name}"
elsif name.length < 10
  puts "hello, #{name}"
else name.length == 10
  puts "hey, #{name}"
end
