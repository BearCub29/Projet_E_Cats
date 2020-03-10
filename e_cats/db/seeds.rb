# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'



05.times do
  User.create!(
    email: Faker::Internet.email(domain: 'yopmail.com'),
    password: "123456",
    password_confirmation: "123456"
    )
end
20.times do
  Item.create!(
    title: Faker::Creature::Cat.breed, 
    description: Faker::Lorem.paragraph,
    prix: Faker::Number.within(range: 1..100)
    )
end