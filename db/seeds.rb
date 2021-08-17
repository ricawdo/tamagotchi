# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
require 'open-uri'

puts 'Cleaning database...'
Animal.destroy_all
User.destroy_all

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

images = ['https://www.selection.ca/wp-content/uploads/2020/12/races-de-chiens-chiots-animaux-Corgi-gallois-Pembroke.jpg?fit=700,525',
   'https://www.agria.fr/imagevault/publishedmedia/6ob4819aqcrbdshdbo4i/valp-springer-i-graset.jpg',
    'https://www.remedes-animaux.org/wp-content/uploads/2021/02/combien-fois-chien-fait-caca-par-jour.jpg',
  'https://m.media-amazon.com/images/I/51PdBQ21DyL._AC_SY450_.jpg',
   'https://i-dja.unimedias.fr/sites/art-de-vivre/files/styles/large/public/dj115_chaton_jardin_annala.jpg?auto=compress%2Cformat&crop=faces%2Cedges&cs=srgb&fit=crop&h=599&w=900',
    'https://i-dja.unimedias.fr/sites/art-de-vivre/files/styles/large/public/dja_poule-wyandotte-jardin_as.jpg?auto=compress%2Cformat&crop=faces%2Cedges&cs=srgb&fit=crop&h=719&w=900',
     'https://img-4.linternaute.com/IV6-ku8VVzTNGcHZ79v28sZI9GQ=/300x/smart/09ad26a3b7784386b059a89581048f88/ccmcms-linternaute/428532.jpg',
      'https://img.passeportsante.net/1000x526/2021-06-01/i107848-eduquer-un-chaton.jpeg',
    'https://jardinage.lemonde.fr/images/dossiers/2017-08/chaton-161238.jpg',
  'https://www.caniprof.com/wp-content/uploads/2019/01/shiba-inu-2.jpg']

puts 'Creating animals...'
10.times do
  animal = Animal.new(
    name: Faker::JapaneseMedia::OnePiece.character,
    breed: Faker::JapaneseMedia::DragonBall.race,
    age: rand(0..6),
    price: rand(10..100),
    description: Faker::Lorem.paragraph,
    specie: Faker::Creature::Animal.name,
    adress: Faker::Address.country,
    user: user
  )

  file = URI.open(images.sample)
  animal.photo.attach(io: file, filename: 'image')
  animal.save!
end

puts 'Animals OK!'
puts 'Finished !'
