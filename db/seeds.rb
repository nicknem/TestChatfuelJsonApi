# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Burger.destroy_all
burgers_attributes = [
  {
    name:         "Le Big Fernand",
    price:        12,
  },
  {
    name:         "Le Bartholomé",
    price:        16,
  },
  {
    name:         "Le Victor",
    price:        10,
  }
]
burgers_attributes.each { |params| Burger.create!(params) }
