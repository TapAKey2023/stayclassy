# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
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
user_1.save
lesson_1 = Lesson.new(name: "Meditating", description:"Feel very zen. Learn mindfulness. Chill class for all!", user_id: user_1.id)
lesson_1.save
lesson_2 = Lesson.new(name: "Profiterole Tasting", description:"Taste some delicious cream puffs with chocolate, like a connoisseur", user_id: user_1.id)
lesson_2.save

puts "Creating user 2 and their lessons..."
user_2 = User.new(email: "Jess@hotmail.com", password: "Jess123", name: "Jess")
user_2.save
lesson_3 = Lesson.new(name: "Cat Grooming 101", description:"Learn how to give your cat a proper spa day", user_id: user_2.id)
lesson_3.save
lesson_4 = Lesson.new(name: "Marie Antionette's Hairstyles", description:"She had some great wigs", user_id: user_2.id)
lesson_4.save

puts "Creating user 3 and their lessons..."
user_3 = User.new(email: "Alex@hotmail.com", password: "Alex123", name: "Alex")
user_3.save
lesson_5 = Lesson.new(name: "JavaScript for Gaming", description:"Make a enmdless runner game in JS", user_id: user_3.id)
lesson_5.save
lesson_6 = Lesson.new(name: "Dinosaurs: when to run", description:"Their vision is based on movement", user_id: user_3.id)
lesson_6.save

puts "Creating bookings..."
booking_1 = Booking.new(user_id:user_1.id, lesson_id: 3, start_date: Date.strptime("2023-21-11", "%Y-%d-%m") )
booking_1.save
booking_2 = Booking.new(user_id:user_1.id, lesson_id: 5, start_date: Date.strptime("2023-21-11", "%Y-%d-%m") )
booking_2.save
booking_3 = Booking.new(user_id: user_2.id, lesson_id: 1, start_date: Date.strptime("2023-21-11", "%Y-%d-%m") )
booking_3.save
booking_4 = Booking.new(user_id: user_2.id, lesson_id: 5, start_date: Date.strptime("2023-21-11", "%Y-%d-%m") )
booking_4.save
booking_5 = Booking.new(user_id: user_3.id, lesson_id: 2, start_date: Date.strptime("2023-21-11", "%Y-%d-%m") )
booking_5.save
booking_6 = Booking.new(user_id: user_3.id, lesson_id: 4, start_date: Date.strptime("2023-21-11", "%Y-%d-%m") )
booking_6.save
