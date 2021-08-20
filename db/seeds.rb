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

puts 'Creating Wadi...'
user_wadi = User.new(
  first_name: "Wadi",
  last_name: "Boom",
  email: "wadiboom@gmail.com",
  password: "123456"
)
user_wadi.save!
puts 'Wadi created !'

puts 'Creating Gwen...'
user_gwen = User.new(
  first_name: "Gwen",
  last_name: "Boom",
  email: "gwen@tamagotchi.com",
  password: "123456"
)
user_gwen.save!
puts 'Gwen Created!'

puts 'Creating Bruno...'
user_bruno = User.new(
  first_name: "Bruno",
  last_name: "Boom",
  email: "bruno@tamagotchi.com",
  password: "123456"
)
user_bruno.save!
puts 'Bruno Created!'

puts 'Creating Ric...'
user_ric = User.new(
  first_name: "Ricardo",
  last_name: "Boom",
  email: "ricardo@tamagotchi.com",
  password: "123456"
)
user_ric.save!
puts 'Ricardo Created !'


images = ['https://www.selection.ca/wp-content/uploads/2020/12/races-de-chiens-chiots-animaux-Corgi-gallois-Pembroke.jpg?fit=700,525',
   'https://www.agria.fr/imagevault/publishedmedia/6ob4819aqcrbdshdbo4i/valp-springer-i-graset.jpg',
    'https://www.remedes-animaux.org/wp-content/uploads/2021/02/combien-fois-chien-fait-caca-par-jour.jpg',
  'https://m.media-amazon.com/images/I/51PdBQ21DyL._AC_SY450_.jpg',
   'https://i-dja.unimedias.fr/sites/art-de-vivre/files/styles/large/public/dj115_chaton_jardin_annala.jpg?auto=compress%2Cformat&crop=faces%2Cedges&cs=srgb&fit=crop&h=599&w=900',
    'https://i-dja.unimedias.fr/sites/art-de-vivre/files/styles/large/public/dja_poule-wyandotte-jardin_as.jpg?auto=compress%2Cformat&crop=faces%2Cedges&cs=srgb&fit=crop&h=719&w=900',
     'https://img-4.linternaute.com/IV6-ku8VVzTNGcHZ79v28sZI9GQ=/300x/smart/09ad26a3b7784386b059a89581048f88/ccmcms-linternaute/428532.jpg',
      'https://img.passeportsante.net/1000x526/2021-06-01/i107848-eduquer-un-chaton.jpeg',
    'https://jardinage.lemonde.fr/images/dossiers/2017-08/chaton-161238.jpg',
  'https://www.caniprof.com/wp-content/uploads/2019/01/shiba-inu-2.jpg',
  'https://jardinage.lemonde.fr/images/dossiers/2018-06/poule-rousse-082903.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRl-u6lC0b7tz4OPKeDhRukc3imA57poIwiw&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVSf6Qpipy3lXfelu1N1NzdqrmSMfSxTz4vQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgzjc1TQCIJf3O2An-uAlsVXseDL6F4h78YDQlBAXJZ0gYleaW8COxRsdlLPN1141hEug&usqp=CAU']

puts 'Creating animals...'

diane = Animal.new(name: 'Rox', breed: 'berger', age: 5, price: 67 ,description: 'Rox, un bon chien qui écoute quand on lui parle' ,specie: 'chien', adress: '16 villa gaudelet paris', user: User.first)
diane.photo.attach(io: URI.open(images[1]), filename: 'image')
diane.save!

colombo = Animal.new(name: 'Colombo', breed: 'poule pondeuse', age: 9, price: 5 ,description: 'Colombo, une detective poule, une nouvelle race de poule' ,specie: 'poule' ,adress: '11 rue de rennes paris', user: User.first)
colombo.photo.attach(io: URI.open(images[10]), filename: 'image')
colombo.save!

miaouss = Animal.new(name: 'Miaouss', breed: 'poisson clown', age: 2, price: 85 ,description: 'Miaouss, un beau poisson qui passe son temps a rien faire' ,specie: 'poisson' ,adress: '84 boulevard raspail paris', user: User.first)
miaouss.photo.attach(io: URI.open(images[11]), filename: 'image')
miaouss.save!

bobby = Animal.new(name: 'Bobby', breed: 'shiba', age: 1, price: 67 ,description: 'Bobby, un bon chien, aime jouer et courrir' ,specie: 'chien' ,adress: '16 avenue foch paris', user: User.first)
bobby.photo.attach(io: URI.open(images[9]), filename: 'image')
bobby.save!

walid = Animal.new(name: 'Walid', breed: 'poule naine', age: 2, price: 15 ,description: 'Belle poule pondeuse' ,specie: 'poule' ,adress: '18 boulevard de la chapelle paris', user: User.first)
walid.photo.attach(io: URI.open(images[5]), filename: 'image')
walid.save!

oneal = Animal.new(name: 'Oneal', breed: 'chaton', age: 2, price: 85 ,description: 'Oneal, un très beau chat' ,specie: 'chat' ,adress: '16 avenue des champs elysées paris', user: User.first)
oneal.photo.attach(io: URI.open(images[4]), filename: 'image')
oneal.save!

andrea = Animal.new(name: 'Andrea', breed: 'poule', age: 2, price: 5 ,description: 'Belle poule de déco' ,specie: 'poule' ,adress: '10 rue de paris paris', user: User.first)
andrea.photo.attach(io: URI.open(images[12]), filename: 'image')
andrea.save!

benoit = Animal.new(name: 'Benoit', breed: 'pitbull', age: 2, price: 85 ,description: 'Benoit, un chien débile (mais drole)' ,specie: 'chien' ,adress: '5 rue de la paix paris', user: User.first)
benoit.photo.attach(io: URI.open(images[2]), filename: 'image')
benoit.save!


batman = Animal.new(name: 'Batman', breed: 'Shibat', age: 2, price: 200 ,description: 'Batman, un super chien' ,specie: 'chien' ,adress: '5 rue de la paix paris', user: User.first)
batman.photo.attach(io: URI.open(images[13]), filename: 'image')
batman.save!

kiwi = Animal.new(name: 'Kiwi', breed: 'pitbull', age: 2, price: 85 ,description: 'Kiwi, le chien mignon' ,specie: 'chien' ,adress: '5 rue de la paix paris', user: User.first)
kiwi.photo.attach(io: URI.open(images[0]), filename: 'image')
kiwi.save!

maki = Animal.new(name: 'Maki', breed: 'chaton', age: 2, price: 85 ,description: 'Maki, beau chaton' ,specie: 'chat' ,adress: '16 avenue des champs elysées paris', user: User.first)
maki.photo.attach(io: URI.open(images[3]), filename: 'image')
maki.save!

walter_white = Animal.new(name: 'Walter White', breed: 'chaton', age: 2, price: 99 ,description: 'Walter white, fabrique des bonbons bleu' ,specie: 'chat' ,adress: '16 avenue des champs elysées paris', user: User.first)
walter_white.photo.attach(io: URI.open(images[7]), filename: 'image')
walter_white.save!

ken = Animal.new(name: 'Ken', breed: 'chaton', age: 2, price: 80 ,description: 'Ken, le bg' ,specie: 'chat' ,adress: '16 avenue des champs elysées paris', user: User.first)
ken.photo.attach(io: URI.open(images[8]), filename: 'image')
ken.save!

puts 'Animals OK!'
puts 'Finished !'
