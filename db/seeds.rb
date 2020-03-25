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

cutie = Cutie.create(name: "Rainer", species: "Manul", description:"Super cute", user_id: user.id, booking_rate: 40, location: "Hardenbergplatz 8, 10787 Berlin")
file = URI.open('https://images.unsplash.com/photo-1516321099745-dd759b1ee63a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
cutie.photos.attach(io: file, filename: 'rainer.jpeg', content_type: 'image/jpeg')

cutie2 = Cutie.create(name: "Stef", species: "Sloth", description:"A real Diva!", user_id: user.id, booking_rate: 50, location: "Riehler Str. 173, 50735 Köln")
file = URI.open('https://cdn.pixabay.com/photo/2016/12/03/15/11/sloth-1879999__340.jpg')
cutie2.photos.attach(io: file, filename: 'stef.jpeg', content_type: 'image/jpeg')

cutie3 = Cutie.create(name: "Paul", species: "Panda", description:"Loves to play with autumn leaves!", user_id: user.id, booking_rate: 70, location: "Lokstedter Grenzstraße 2, 22527 Hamburg")
file = URI.open('https://images.unsplash.com/photo-1525382455947-f319bc05fb35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=814&q=80')
cutie3.photos.attach(io: file, filename: 'paul.jpeg', content_type: 'image/jpeg')

cutie4 = Cutie.create(name: "Jana", species: "Alpaka", description:"Loves to go for walks in the park", user_id: user.id, booking_rate: 60, location: "Tierparkstraße 30, 81543 München")
file = URI.open('https://res.cloudinary.com/frieda/image/upload/v1582728788/31ctb8cexTDFzfDxYFJ3EQDM.jpg')
cutie4.photos.attach(io: file, filename: 'jana.jpeg', content_type: 'image/jpeg')

# cutie5 = Cutie.create(name: "Ruby", species: "Koala", description:"I love pools and if someone brushes my back", user_id: user.id, booking_rate: 120)
# file = URI.open('')
# cutie5.photos.attach(io: file, filename: 'ruby.jpeg', content_type: 'image/jpeg')

# cutie6 = Cutie.create(name: "Adriana", species: "Snake", description:"You can give me some mice", user_id: user.id, booking_rate: 29)
# file = URI.open('')
# cutie6.photos.attach(io: file, filename: 'Adriana.jpeg', content_type: 'image/jpeg')

cutie5 = Cutie.create(name: "Biggi", species: "Koala", description:"Let me sleep so I can relax you", user_id: user.id, booking_rate: 459, location: "Bernhard-Grzimek-Allee 1, 60316 Frankfurt am Main")
file = URI.open('https://images.unsplash.com/photo-1504575958497-ccdd586c2997?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2254&q=80')
cutie5.photos.attach(io: file, filename: 'Biggi.jpeg', content_type: 'image/jpeg')

cutie6 = Cutie.create(name: "Wolfi", species: "Lemur", description:"I can hypnotize with my eyes", user_id: user.id, booking_rate: 99, location: "Am Zoopark 1, 99087 Erfurt")
file = URI.open('https://images.unsplash.com/photo-1557079582-afcf05e8e474?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
cutie6.photos.attach(io: file, filename: 'Wolfi.jpeg', content_type: 'image/jpeg')


puts 'Creating Bookings'
start_date = Date.today + 600
end_date = start_date + 6
booking = Booking.create!(user_id: user2.id, cutie_id: cutie.id, start_date: start_date, end_date: end_date)

start_date = Date.today + 500
end_date = start_date + 5
booking1 = Booking.create!(user_id: user3.id, cutie_id: cutie.id, start_date: start_date, end_date: end_date)

start_date = Date.today + 400
end_date = start_date + 4
booking3 = Booking.create!(user_id: user4.id, cutie_id: cutie2.id, start_date: start_date, end_date: end_date)

start_date = Date.today + 700
end_date = start_date + 8
booking4 = Booking.create!(user_id: user4.id, cutie_id: cutie2.id, start_date: start_date, end_date: end_date)

start_date = Date.today + 800
end_date = start_date + 3
booking5 = Booking.create!(user_id: user5.id, cutie_id: cutie5.id, start_date: start_date, end_date: end_date)

start_date = Date.today + 300
end_date = start_date + 9
booking6 = Booking.create!(user_id: user4.id, cutie_id: cutie6.id, start_date: start_date, end_date: end_date)

start_date = Date.today + 120
end_date = start_date + 4
booking7 = Booking.create!(user_id: user2.id, cutie_id: cutie3.id, start_date: start_date, end_date: end_date)

start_date = Date.today + 180
end_date = start_date + 4
booking8 = Booking.create!(user_id: user2.id, cutie_id: cutie4.id, start_date: start_date, end_date: end_date)




puts 'Creating Reviews'
review = Review.create!(booking_id: booking.id, title: "Amazing experience", content: "Booked the animal for my nephew - He really loves it", owner_rating: 5, animal_rating: 5)
review1 = Review.create!(booking_id: booking1.id, title: "A grumpy Cutie", content: "In the beginning a bit grumpy but soon very loving. If you like cats you will love Rainer!", owner_rating: 5, animal_rating: 4)
review2 = Review.create!(booking_id: booking3.id, title: "So special!", content: "Treat yourself to a special favor and book Stef! You won't regret it", owner_rating: 3, animal_rating: 4)
review3 = Review.create!(booking_id: booking4.id, title: "Sloth-tastik", content: "I needed someone to calm me down after a stressfull Bootcamp and Stef really did the Job.", owner_rating: 5, animal_rating: 3)
review4 = Review.create!(booking_id: booking5.id, title: "Koala Therapy", content: "coolest and calmest Koala in town!", owner_rating: 5, animal_rating: 4)
review5 = Review.create!(booking_id: booking6.id, title: "Hypnotising", content: "Let me tell you this: Wolfi truly can hypnotise with his eyes. However he didn't seem to be in the best mood.", owner_rating: 4, animal_rating: 3)
review6 = Review.create!(booking_id: booking7.id, title: "Great day", content: "Paul is a very special Panda. He is nice and calm and particularily tolerant, even with my 3 year old daughter who loved him equally.", owner_rating: 5, animal_rating: 5)
review7 = Review.create!(booking_id: booking8.id, title: "Interesting experience", content: "Jana was very fluffy but you should try to train her not to spit at people!", owner_rating: 2, animal_rating: 2)




