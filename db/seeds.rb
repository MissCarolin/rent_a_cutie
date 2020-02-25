# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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
cutie = Cutie.create!(name: "Rainer", species: "Manul", description:"Super cute", user_id: user.id)


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

