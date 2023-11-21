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

my_arr = (1..10)

my_arr.each do |num|
  my_user = User.new(email: "Name#{num}@hotmail.com", password: "1234567#{num}")
  my_user.save
end
