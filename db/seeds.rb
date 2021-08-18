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

diane = Animal.new(name: 'Rox', breed: 'berger', age: 5, price: 67 ,description: 'Rox est un bon chien qui écoute quand on lui parle' ,specie: chien, adress: 'paris', user: user)
diane.photo.attach(io: URI.open(images.sample), filename: 'image')
diane.save!

colombo = Animal.new(name: 'Colombo', breed: 'poule pondeuse', age: 9, price: 5 ,description: 'colombo est une detective poule, une nouvelle race de poule' ,specie: 'Poule' ,adress: 'paris', user: user)
colombo.photo.attach(io: URI.open(images.sample), filename: 'image')
colombo.save!

miaouss = Animal.new(name: 'Miaouss', breed: 'poisson clown', age: 2, price: 85 ,description: 'Miaouss est un beau poisson qui passe son temps rien faire' ,specie: 'poisson' ,adress: 'paris', user: user)
miaouss.photo.attach(io: URI.open(images.sample), filename: 'image')
miaouss.save!

bobby = Animal.new(name: 'Bobby', breed: 'shiba', age: 1, price: 67 ,description: 'Bobby est un bon chien, aime jouer et courrir' ,specie: 'chien' ,adress: 'paris', user: user)
bobby.photo.attach(io: URI.open(images.sample), filename: 'image')
bobby.save!

walid = Animal.new(name: 'Walid', breed: 'poule naine', age: 2, price: 5 ,description: 'belle poule pondeuse' ,specie: 'Poule' ,adress: 'paris', user: user)
walid.photo.attach(io: URI.open(images.sample), filename: 'image')
walid.save!

oneal = Animal.new(name: 'Oneal', breed: 'chaton', age: 2, price: 85 ,description: 'Oneal est un très beau chat' ,specie: 'Chat' ,adress: 'paris', user: user)
oneal.photo.attach(io: URI.open(images.sample), filename: 'image')
oneal.save!

andrea = Animal.new(name: 'Andrea', breed: 'poule', age: 2, price: 5 ,description: 'belle poule pondeuse' ,specie: 'Poule' ,adress: 'paris', user: user)
andrea.photo.attach(io: URI.open(images.sample), filename: 'image')
andrea.save!

benoit = Animal.new(name: 'Benoit', breed: 'pitbull', age: 2, price: 85 ,description: 'Benoit est un chien débile (mais drole)' ,specie: 'Chien' ,adress: 'paris', user: user)
benoit.photo.attach(io: URI.open(images.sample), filename: 'image')
benoit.save!

puts 'Animals OK!'
puts 'Finished !'
