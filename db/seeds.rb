# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

puts 'Cleaning database...'
User.destroy_all
Animal.destroy_all

puts 'Creating wadi...'

user = User.new(
  first_name: "Wadi",
  last_name: "Boom",
  email: "wadiboom@gmail.com",
  password: "123456"
)
user.save!

puts 'Creating users...'
10.times do
  user = User.new(
    first_name: Faker::Name,
    last_name: Faker::Name,
    email: Faker::Internet.email,
    password: "123456"
  )
  user.save!
end
puts 'Users OK!'

puts 'Creating animals...'
10.times do
  animal = Animal.new(
    name: Faker::JapaneseMedia::OnePiece,
    breed: Faker::JapaneseMedia::DragonBall.race,
    age: rand(0..6),
    description: Faker::Lorem.paragraphs,
    specie: Faker::Creature::Animal.name,
    adress: Faker::Address.country,
    user: user
  )
  animal.save!
end

puts 'Animals OK!'
puts 'Finished !'
