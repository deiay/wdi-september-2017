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

p flips
p fav_colours[0]
p ages.sort.reverse
ages << 0
p ages

p movies["Good Will Hunting"]
