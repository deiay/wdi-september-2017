fav_colours = ["maroon","grey","green","tan"]
ages = [14,23,24,25]
flips = [0,1,0,0,1]
artists = ["Burna","Bruno","Drake"]
fav_colours2 = [:maroon,:grey,:green,:tan]

words = {
  prudence: "the quality of being prudent; cautiousness.",
  illogical: "lacking sense or clear, sound reasoning",
  discipline: "the practice of training people to obey rules or a code of behaviour, using punishment to correct disobedience."
}

cities = {
  Toronto:2930000,
  :NewYork => 8626000,
  "London" => 8136000
}

movies = {
  "Good Will Hunting" => 1997,
  "Dune" => 1984
}

siblings = {
  Jonathan:14,
  David:23,
  Elizabeth:24,
  Ruth:25
}

# Exercise 1

# p flips
# p fav_colours[0]
# p ages.sort.reverse
# ages << 0
# p ages
#
# p movies["Good Will Hunting"]

# Exercise 2

# p fav_colours[-1]
# cities["Hong Kong"] = 7392000
# p cities
# p flips
# flips.reverse!
# p flips
#
# p cities[:Toronto]
#
# artists.each {|artist| p "I think #{artist} is great."}

# Exercise 3

# p artists[0..1]
#
# def movies_dates(movies)
#   movies.each do |movie,year|
#     p "#{movie.capitalize} came out in #{year}."
#   end
# end
#
# ages_reversed = ages.sort.reverse
#
# p ages_reversed
#
# movies["Beauty and the Beast"] = "1991 and 2017"
#
# movies_dates(movies)

#Exercise 4
#
# selection = siblings.select {|name,age| age > 20}
#
# p selection.max[0]
#
# p flips.reduce(0) {|total,current_flip| total = total + current_flip}
#
# artists.delete_at(0)
# p artists
#
# p "How many people were born in Toronto today?"
# cities[:Toronto] += gets.to_i
#
# p cities


# Exercise 5

# total_poulation = cities.reduce(0) do |total,(_city,population)|
#   total += population
# end
#
# p total_poulation
#
# siblings.each do |name,age|
#   if age > 20
#     p "#{name} is old"
#   else
#     p "#{name} is young"
#   end
# end
#
# p fav_colours[-2..-1]
#
# p ages.map {|age| age + 1}
#
# fav_colours << ['blue','flatuicolours']
#
# p fav_colours.flatten!

# Exercise 6

# movie_years = {
#   1999 => ["The Matrix", "Star Wars: Episode 1", "The Mummy"],
#   2009 => ["Avatar", "Star Trek", "District 9"],
#   2019 => ["How to Train Your Dragon 3", "Toy Story 4", "Star Wars: Episode 9"]
# }
#
# puts movie_years
#
# dialpad = [
#   [1,2,3],
#   [4,5,6],
#   [7,8,9],
#   ["*",0,"#"]
# ]
#
# p dialpad
#
 countries = [
  {country:"Canada",continent:"North America",island:false},
  {country:"Unites States",continent:"North America",island:false},
  {country:"England",continent:"Europe",island:true}
]
#
# p countries

# Exercise 6.2

#20.times {p "I will not skateboard in the halls"}

# puts Array.new(20,"I will not skateboard in the halls")

# counter = 0
# output = []
# while counter <= 50
#   output << counter
#   counter += 1
# end
#
# #puts output
# my_range = (0..50).to_a
# my_sum = 0
# my_range.each do |number|
#   my_sum += number
# end
# # p my_sum
#
# counter = 0
# output_2 = []
# while counter <= 50
#   3.times do
#     output_2 << counter
#   end
#   counter += 1
# end
#
# #p output_2
#
# non_islands = countries.select {|country| !country[:island]}
# islands = countries.select {|country| country[:island]}
#
# output_3 = []
# non_islands.each do |country|
#   output_3 << country[:country]
# end
#
# output_4 = []
# islands.each do |country|
#   output_4 << country[:country]
# end
#
# p output_3
# p output_4

# expenses = [12.12,2133,12,83,59,3,3.65]
#
# p expenses.reduce(:+)

#Excercise 8

def show_list(list)
  number_of_items = list.length
  puts "There are #{number_of_items} items on your list:"
  list.each do |item|
    puts "* #{item}"
  end
end

def includes_item?(list,search_word)
  if list.include? search_word
    puts "Your list includes #{search_word}"
  else
    puts "#{search_word} aren't on your list, do you want to add it? (Yes/No)"
    add_to_list = gets.chomp
    if add_to_list == "Yes"
      list << search_word
      puts "I've added #{search_word} to your list!"
    else
      puts "Okay I won't add #{search_word} to your list."
    end
  end
end

def sort_list(list)
  sorted = list.sort
  puts "Your list sorted in alphabetical order:"
  puts sorted
  puts "\nWould you like me to save this?"
  answer = gets.chomp
  if answer == "Yes"
   list = sorted
   puts "I've saved this now. Your new list is:"
   puts list
  else puts "Okay, I'll leave your list as is. Your list is"
      puts list
  end
end



grocery_list = ["bagels","salami","eggs","cheese","cranberry juice"]
grocery_list << "rice"

#show_list(grocery_list)
#includes_item?(grocery_list,"bananas")
#show_list(grocery_list)
#puts "The second item in your list is #{grocery_list[1]}"

sort_list(grocery_list)

grocery_store = ["bagels","eggs","cheese","cranberry juice"]

grocery_list.each_with_index do |list_item,index|
  if !grocery_store.include? list_item
    grocery_list.delete_at(index)
    puts "I couldn't find #{list_item} in the store, I've removed it from your list"
  end
end

puts grocery_list
