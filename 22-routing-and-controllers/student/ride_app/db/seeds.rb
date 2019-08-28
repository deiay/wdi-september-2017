# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ride.create!(
  name: "The Flyer",
  description: "Old Wooden RollerCoaster",
  price: 0.05
)

Ride.create!(
  name: "King Da Ka",
  description: "Tallest",
  price: 60.00
)

Ride.create!(
  name: "Ferris Wheel",
  description: "Romantic",
  price: 9.99
)
