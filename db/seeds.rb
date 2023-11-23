# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'
User.destroy_all
# User.create(email: "Name1", password:"Password1")
# User.create(email: "Name2", password:"Password1")
# User.create(email: "Name3", password:"Password1")
# User.create(email: "Name4", password:"Password1")
# User.create(email: "Name5", password:"Password1")
# User.create(email: "Name6", password:"Password1")
# User.create(email: "Name1", password:"Password1")
# User.create(email: "Name1", password:"Password1")
# User.create(email: "Name1", password:"Password1")
# User.create(email: "Name1", password:"Password1")
# User.create(email: "Name1", password:"Password1")

# my_arr = (1..10)

# my_arr.each do |num|
#   my_user = User.new(email: "Name#{num}@hotmail.com", password: "1234567#{num}")
#   my_user.save
#   my_lessons = Lesson.new(name: "Lesson nr #{num}", user_id: rand(1..10))
#   my_lessons.save
#   my_bookings = Booking.new(lesson_id: rand(1..10), user_id: rand(1..10))
#   my_bookings.save
# end

puts "Creating user 1 and their lessons..."
user_1 = User.new(email: "Visar@hotmail.com", password: "Visar123", name: "Visar")
user_1.save!

file_1 = URI.open("https://m.media-amazon.com/images/I/81Fjo7YQXFL._AC_SX522_.jpg")
lesson_1 = Lesson.new(name: "Meditating", description:"Feel very zen. Learn mindfulness. Chill class for all!", category: "Self-care", total_price: 50, duration: 7, user_id: user_1.id)
lesson_1.photo.attach(io: file_1, filename: "Meditating.jpg")
lesson_1.save!

file_6= URI.open("https://sugarspunrun.com/wp-content/uploads/2023/04/Profiteroles-6-of-9.jpg")
lesson_2 = Lesson.new(name: "Profiterole Tasting", description:"Taste some delicious cream puffs with chocolate, like a connoisseur",category: "Cooking", total_price: 20, duration: 2, user_id: user_1.id)
lesson_2.photo.attach(io: file_6, filename: "Tasting.jpg")
lesson_2.save!

puts "Creating user 2 and their lessons..."
user_2 = User.new(email: "Jess@hotmail.com", password: "Jess123", name: "Jess")
user_2.save!

file_2= URI.open("https://www.purina.co.uk/sites/default/files/2023-03/Hero%20Pedigree%20Cats.jpg")
lesson_3 = Lesson.new(name: "Cat Grooming 101", description:"Learn how to give your cat a proper spa day",category: "Pets", total_price: 30, duration: 4, user_id: user_2.id)
lesson_3.photo.attach(io: file_2, filename: "Cat_Grooming.jpg")
lesson_3.save!

file_3= URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Marie-Antoinette%2C_1775_-_Mus%C3%A9e_Antoine_L%C3%A9cuyer.jpg/220px-Marie-Antoinette%2C_1775_-_Mus%C3%A9e_Antoine_L%C3%A9cuyer.jpg")
lesson_4 = Lesson.new(name: "Marie Antionette's Hairstyles", description:"She had some great wigs",category: "Beauty", total_price: 10, duration: 2, user_id: user_2.id)
lesson_4.photo.attach(io: file_3, filename: "Maria.jpg")
lesson_4.save!


puts "Creating user 3 and their lessons..."
user_3 = User.new(email: "Alex@hotmail.com", password: "Alex123", name: "Alex")
user_3.save


file_4= URI.open("https://storage.googleapis.com/pod_public/750/168838.jpg")
lesson_5 = Lesson.new(name: "JavaScript for Gaming", description:"Make a enmdless runner game in JS",category: "Coding", total_price: 20, duration: 5, user_id: user_3.id)
lesson_5.photo.attach(io: file_4, filename: "Gaming.jpg")
lesson_5.save!

file_5= URI.open("https://s.abcnews.com/images/Technology/gigas-1-gty-er-220707_1657218200336_hpMain_4x3t_992.jpg")
lesson_6 = Lesson.new(name: "Dinosaurs: when to run", description:"Their vision is based on movement", category: "Self-care", total_price: 20, duration: 2, user_id: user_3.id)
lesson_6.photo.attach(io: file_5, filename: "Dinosaurs.jpg")
lesson_6.save

# puts "Creating bookings..."
# booking_1 = Booking.new(user_id:user_1.id, lesson_id: 3, start_date: DateTime.new(2023,11,22,17) )
# booking_1.save!
# booking_2 = Booking.new(user_id:user_1.id, lesson_id: 5, start_date: DateTime.new(2023,11,22,17) )
# booking_2.save
# booking_3 = Booking.new(user_id: user_2.id, lesson_id: 1, start_date: DateTime.new(2023,11,22,17) )
# booking_3.save
# booking_4 = Booking.new(user_id: user_2.id, lesson_id: 5, start_date: DateTime.new(2023,11,22,17) )
# booking_4.save
# booking_5 = Booking.new(user_id: user_3.id, lesson_id: 2, start_date: DateTime.new(2023,11,22,17) )
# booking_5.save
# booking_6 = Booking.new(user_id: user_3.id, lesson_id: 4, start_date: DateTime.new(2023,11,22,17) )
# booking_6.save
