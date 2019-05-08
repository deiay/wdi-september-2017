pets = [
  'Murphy',
  'Bacon',
  'Fido','Scrap',
  'Jimmi','Steaks','1',
]

p pets.sort {|pet| pet.length }
p pets.select {|pet| pet.length > 4 }
