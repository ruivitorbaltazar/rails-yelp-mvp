# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Seeding your DB'

puts 'Creating a few restaurants'
Restaurant.create(
  name: 'XinPow',
  address: 'Lisbon',
  phone_number: '217836479',
  category: 'chinese'
)
Restaurant.create(
  name: 'Alfredo',
  address: 'Porto',
  phone_number: '212739193',
  category: 'italian'
)
Restaurant.create(
  name: 'Pinoquio',
  address: 'Coimbra',
  phone_number: '218748973',
  category: 'french'
)
Restaurant.create(
  name: 'Sakura',
  address: 'Lisbon',
  phone_number: '216478292',
  category: 'japanese'
)
Restaurant.create(
  name: 'Beer And Other Things',
  address: 'Lisbon',
  phone_number: '216368398',
  category: 'belgian'
)

puts 'All done! :D'
