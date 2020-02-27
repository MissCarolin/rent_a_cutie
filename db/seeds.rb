# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Deleting all reviews'
Review.delete_all
puts 'Deleting Bookings'
Booking.delete_all
puts 'Deleting all cuties'
Cutie.delete_all
puts 'Deleting all users'
User.delete_all

puts 'Creating users'
user = User.create!(email:"example@test.com", password:"testtest")
user2 = User.create!(email:"example2@test.com", password:"testtest")
user3 = User.create!(email:"example3@test.com", password:"testtest")
user4 = User.create!(email:"example4@test.com", password:"testtest")
user5 = User.create!(email:"example5@test.com", password:"testtest")


puts 'Creating cuties'

cutie = Cutie.create(name: "Rainer", species: "Manul", description:"Super cute", user_id: user.id, booking_rate: 40)
file = URI.open('https://images.unsplash.com/photo-1516321099745-dd759b1ee63a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
cutie.photos.attach(io: file, filename: 'rainer.jpeg', content_type: 'image/jpeg')

cutie2 = Cutie.create(name: "Stef", species: "Sloth", description:"A real Diva!", user_id: user.id, booking_rate: 50)
file = URI.open('https://thumbs.dreamstime.com/z/sloth-smiling-you-sloth-just-staring-smiling-me-116009178.jpg')
cutie2.photos.attach(io: file, filename: 'stef.jpeg', content_type: 'image/jpeg')

cutie3 = Cutie.create(name: "Paul", species: "Panda", description:"Loves to play with autumn leaves!", user_id: user.id, booking_rate: 70)
file = URI.open('https://images.unsplash.com/photo-1525382455947-f319bc05fb35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=814&q=80')
cutie3.photos.attach(io: file, filename: 'paul.jpeg', content_type: 'image/jpeg')

cutie4 = Cutie.create(name: "Jana", species: "Alpaka", description:"Loves to go for walks in the park", user_id: user.id, booking_rate: 60)
file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1582728788/31ctb8cexTDFzfDxYFJ3EQDM.jpg')
cutie4.photos.attach(io: file, filename: 'jana.jpeg', content_type: 'image/jpeg')





start_date = Date.today
end_date = start_date + 6
booking = Booking.create!(user_id: user2.id, cutie_id: cutie.id, start_date: start_date, end_date: end_date)

start_date = Date.today
end_date = start_date + 5
booking = Booking.create!(user_id: user3.id, cutie_id: cutie.id, start_date: start_date, end_date: end_date)

start_date = Date.today
end_date = start_date + 8
booking = Booking.create!(user_id: user4.id, cutie_id: cutie.id, start_date: start_date, end_date: end_date)


puts 'Creating Reviews'
review = Review.create!(booking_id: booking.id, title: "Amazing experience", content: "Booked the animal for my nephew - He really loves it", owner_rating: 5, animal_rating: 5)

