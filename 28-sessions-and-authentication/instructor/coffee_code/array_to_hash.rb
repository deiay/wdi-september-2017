movies = [
  ['Alfonso Cuaron',  'Gravity'],
  ['Spike Jonze',     'Her'],
  ['Martin Scorsese', 'The Wolf of Wall Street']
]

# Straightforward Solution
imdb = {}
movies.each do |director, film|
  imdb[director] = film
end
puts imdb

# 2nd Solution: inject
imdb = movies.inject({}) do |result, (director, film)|
  result[director] = film
  result
end
puts imdb

# 3rd Solution
puts movies.to_h


#==================

numbers = [4, 8, 2, 6]
sum = numbers.inject(0) do |result, num|
  intermediate_result = result + num
  intermediate_result
end
puts sum

#####
# Iteration|result|num
# 0th      |0     |4
# 1st      |4     |8
# 2nd      |12    |2
# 3rd      |14    |6
# Final return value: 20
